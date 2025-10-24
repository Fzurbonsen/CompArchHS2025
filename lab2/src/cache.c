/*
 * cache.c:
 * 
 * Computer Architecture - Professor Onur Mutlu    
 * MIPS pipeline timing simulator
 * 
 * Author: <Frederic zur Bonsen>
 * E-Mail: <fzurbonsen@ethz.ch>
 * 
 * This file holds the implementation of the cache for the MIPS simulator.
*/

#include "cache.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

// #define DEBUG




/*********************************
 *                               *
 *       Struct Management       *
 *                               *
 *********************************/

// function to init data cache
cache_t* cache_init(int n_sets, int n_ways, int tag_shift, int set_index_shift, uint32_t set_index_off, cache_type_e type) {
    cache_t* cache = (cache_t*)calloc(1, sizeof(cache_t));
    cache->blocks = (cache_block_t*)calloc(1, n_sets*n_ways*sizeof(cache_block_t));
    cache->n_sets = n_sets;
    cache->n_ways = n_ways;
    cache->tag_shift = tag_shift;
    cache->set_index_shift = set_index_shift;
    cache->set_index_off = set_index_off;
    cache->type = type;
    cache->valid = 0;
    return cache;
}


// function to destroy cache_t struct
void cache_destroy(cache_t* cache) {
    free(cache->blocks);
    free(cache);
}




/*********************************
 *                               *
 *       Helper Functions        *
 *                               *
 *********************************/


// function to update the lru of the current set
static int cache_update_lru(cache_block_t *set, uint32_t way, int lru, cache_t* cache) {

    // iterate over all ways in the set and update their lru
    for (int i = 0; i < cache->n_ways; ++i) {

        // if the lru is bigger then the current lru, i.e.it has been used more recently then we need to shift it
        if (set[i].valid && set[i].lru > lru)
            set[i].lru--;
    }

    // return the top lru
    return cache->n_ways-1;
}


// function to unstall L1 cache and set the valid in the handshake
static void l1_cache_end_stall(cache_t* cache, int8_t valid, uint64_t cycle) {
    cache->is_stall = 0;
    cache->valid = valid;
}


// function to start a stall in the L1 cache
static void l1_cache_set_stall(cache_t* cache, uint64_t cycle, uint32_t is_stall, uint32_t address) {
    if (is_stall > 0) {
        cache->is_stall = is_stall;
        cache->valid = 0;
        cache->current_address = address;
        cache->stall_start_cycle = cycle;
        return;
    }
    l1_cache_end_stall(cache, 1, cycle);
    return;
}




/*********************************
 *                               *
 *           L2 Cache            *
 *                               *
 *********************************/


#define MEM_ACCESS_TIME 50
#define L2_CACHE_HIT_STALL 1
#define L2_CACHE_MISS_STALL 2
#define L2_CACHE_HIT_STALL_TIME 15
#define L2_CACHE_BLOCK_OFFSET 5 // log2(32) = 5 as the cache blocks have size 32 bytes


// function to find a free MSHR or return -1 if there is none
static int find_free_mshr(mshr_t* mshr) {
    for (int i = 0; i < L2_CACHE_NUM_MSHR; ++i) { // iterate over all MSHRs
        if (mshr[i].valid == 0) return i; // if a free MSHR is found we return
    }
    return -1; // if no free MSHR is found we return -1
}


// function to allocate an MSH-register and return its index in the MSHR table or return -1 if no free register is found
static int alloc_mshr(mshr_t* mshr, uint32_t address, uint64_t cycle, cache_type_e type) {
    int32_t idx = find_free_mshr(mshr);
    if (idx >= 0) {
        mshr[idx].done = 0; // request in process but not yet done
        mshr[idx].valid = 1; // MSHR is in use
        mshr[idx].cycle = cycle;
        mshr[idx].address = address;
        mshr[idx].type = type;
        mshr[idx].idx = idx;
    }
    return idx;
}


// function to free a MSH-register
static void clear_mshr(mshr_t* mshr) {
    mshr->done = 0;
    mshr->valid = 0; // MSHR is not in use and can be reused
    mshr->address = 0;
    mshr->type = UNDEF;
    return;
}


// function to calculate the stall time upon an access to the L2 cache
static void l2_cache_access(uint32_t in, cache_t* cache, cache_t* l1_cache, mem_con_t* mem_con) {
    mshr_t* l2_mshr = &mem_con->l2_mshr[0];

    uint32_t tag = in >> cache->tag_shift;
    uint32_t set_index = (in >> cache->set_index_shift) & cache->set_index_off;

    cache_block_t* set = &cache->blocks[set_index*cache->n_ways]; // get the set from the cache

    // serach the set for a tag match
    for (int i = 0; i < cache->n_ways; ++i) {

        // check if we have a hit
        if (set[i].valid && set[i].tag == tag) {
            set[i].lru = cache_update_lru(set, i, set[i].lru, cache);
            l1_cache_set_stall(l1_cache, mem_con->cycle, L2_CACHE_HIT_STALL, in);
            return;
        }
    }

    // if we have a cache miss we need to allocate a MSHR
    uint32_t block_address = in >> L2_CACHE_BLOCK_OFFSET << L2_CACHE_BLOCK_OFFSET; // we look at the least significant bits od the address up to L2_CACHE_BLOCK_OFFSET
    int32_t mshr_idx = alloc_mshr(l2_mshr, block_address, mem_con->cycle, l1_cache->type);
    if (mshr_idx < 0) {
        // handle if we do not find a free MSHR this should not happen with our current setup
        fprintf(stderr, "[cache]error: no free MSHR\n");
        fprintf(stderr, "\tNo free MSHR could be found this is the current MSHR table:\n");
        fprintf(stderr, "\t------------MSHR TABLE------------\n");
        fprintf(stderr, "\t| IDX\t| DONE\t| VALID\t| ADDRESS\n");
        fprintf(stderr, "\t----------------------------------\n");
        for (int i = 0; i < L2_CACHE_NUM_MSHR; ++i) {
            fprintf(stderr, "\t| %i\t| %i\t| %i\t| %u\n", i, l2_mshr[i].done, l2_mshr[i].valid, l2_mshr[i].address);
            fprintf(stderr, "\t----------------------------------\n");
        }
        fprintf(stderr, "Error occured in function cache.c/static int l2_cache_stall(uint32_t in, cache_t* cache)\n");
        exit(1);
    }

    // find a victim or the LRU entry
    int32_t victim = -1;
    int32_t min_lru = cache->n_ways;
    
    // iterate over all entries in the set
    for (int i = 0; i < cache->n_ways; ++i) {

        // check for invalid entry
        if (!set[i].valid) {
            victim = i;
            break; // if we find an invalid entry we can break
        }

        // find the LRU block
        if (set[i].lru < min_lru) {
            min_lru = set[i].lru;
            victim = i;
        }
    }

    // insert the new block
    set[victim].tag = tag;
    set[victim].valid = 1;
    set[victim].lru = cache_update_lru(set, victim, 0, cache);

    mem_con_access(mem_con, mshr_idx);
    l1_cache_set_stall(l1_cache, mem_con->cycle, L2_CACHE_MISS_STALL, in);
    return;
}




/*********************************
 *                               *
 *           L1 Cache            *
 *                               *
 *********************************/


#define L1_CACHE_HIT_STALL 0
#define L1_CHACHE_MISS_STALL 50


// function to calculate the number of cycles we need to stall for to simulate the memory access
static void l1_cache_access(cache_t* cache, cache_t* l2_cache, mem_con_t* mem_con, uint32_t in) {
    uint32_t tag = in >> cache->tag_shift;
    uint32_t set_index = (in >> cache->set_index_shift) & cache->set_index_off;

    cache_block_t* set = &cache->blocks[set_index*cache->n_ways]; // get the set from the cache

    // serach the set for a tag match
    for (int i = 0; i < cache->n_ways; ++i) {

        // check if we have a hit
        if (set[i].valid && set[i].tag == tag) {
            set[i].lru = cache_update_lru(set, i, set[i].lru, cache);
            l1_cache_set_stall(cache, mem_con->cycle, L1_CACHE_HIT_STALL, in);
            return;
        }
    }

    // if we have a cache miss we add to the cache and stall for 50 cycles
    int victim = -1;
    int min_lru = cache->n_ways;

    // find either an invalid entry or the LRU block
    for (int i = 0; i < cache->n_ways; ++i) {

        // check for invalid entry
        if (!set[i].valid) {
            victim = i;
            break; // if we find an invalid entry we can break
        }

        // find the LRU block
        if (set[i].lru < min_lru) {
            min_lru = set[i].lru;
            victim = i;
        }
    }

    // insert the new block
    set[victim].tag = tag;
    set[victim].valid = 1;
    set[victim].lru = cache_update_lru(set, victim, 0, cache);

    l2_cache_access(in, l2_cache, cache, mem_con);
    return;
}




/*********************************
 *                               *
 *      Pipeline Interface       *
 *                               *
 *********************************/


// function to update an l1 cache
void l1_cache_update(cache_t* cache, uint64_t cycle) {
    if (cache->is_stall == 1 && cache->stall_start_cycle + L2_CACHE_HIT_STALL_TIME == cycle) {
        l1_cache_end_stall(cache, 1, cycle);
    }
}


// function to update an l2 cache
void l2_cache_update(cache_t* cache, mem_con_t* mem_con, cache_t* icache, cache_t* dcache) {

    // check the MSHRs
    for (int i = 0; i < L2_CACHE_NUM_MSHR; ++i) {
        mshr_t* mshr = &mem_con->l2_mshr[i];

        // if we find a ready mshr then we process it
        if (mshr->done) {
            // check the origin
            if (mshr->type == ICACHE) {
                l1_cache_end_stall(icache, 1, mem_con->cycle);
            }
            if (mshr->type == DCACHE) {
                l1_cache_end_stall(dcache, 1, mem_con->cycle);
            }

            clear_mshr(mshr);
        }
    }
}


// function to handle pipeline flushes
void cache_flush(cache_t* cache) {

    // if the cache is currently fetching something from memory then we cancle that action
    if (cache->is_stall) {

        // identify the current address being fetched and invalidate it
        uint32_t tag = cache->current_address >> cache->tag_shift;
        uint32_t set_index = (cache->current_address >> cache->set_index_shift) & cache->set_index_off;

        cache_block_t* set = &cache->blocks[set_index*cache->n_ways]; // get the set from the cache

        // serach the set for the entry
        for (int i = 0; i < cache->n_ways; ++i) {

            // check if we have a hit
            if (set[i].valid && set[i].tag == tag) {
                set[i].valid = 0; // invalidate the entry
                break;
            }
        }
        l1_cache_end_stall(cache, 0, 0);
    }
}




/*********************************
 *                               *
 *        Stage Interface        *
 *                               *
 *********************************/


// function to return for a cache if the cache is currently causing a stall
int cache_is_stall(cache_t* cache) {
    return cache->is_stall;
}

// function to return the valid state of the cache
int cache_valid(cache_t* cache) {
    return cache->valid;
}

// function to complete the handshake with the stall
void cache_ready(cache_t* cache) {
    cache->valid = 0;
}


// function to handle a memory request
void cache_access(cache_t* cache, cache_t* l2_cache, mem_con_t* mem_con, uint32_t in) {
    l1_cache_access(cache, l2_cache, mem_con, in);
}