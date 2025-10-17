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


// function to init data cache
cache_t* cache_init(int n_sets, int n_ways, int tag_shift, int set_index_shift, uint32_t set_index_off) {
    cache_t* cache = (cache_t*)calloc(1, sizeof(cache_t));
    cache->blocks = (cache_block_t*)calloc(1, n_sets*n_ways*sizeof(cache_block_t));
    cache->n_sets = n_sets;
    cache->n_ways = n_ways;
    cache->tag_shift = tag_shift;
    cache->set_index_shift = set_index_shift;
    cache->set_index_off = set_index_off;
    cache->stall_counter = 0;
    cache->valid = 0;
    return cache;
}


// function to destroy cache_t struct
void cache_destroy(cache_t* cache) {
    free(cache->blocks);
    free(cache);
}


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



/*********************************
 *                               *
 *          L2 Cache             *
 *                               *
 *********************************/


#define L2_CACHE_NUM_MSHR 16
#define MEM_ACCESS_TIME 50
#define L2_CACHE_HIT_STALL 15
#define L2_CACHE_MISS_STALL 5 + MEM_ACCESS_TIME + 5
#define L2_CACHE_BLOCK_OFFSET 5 // log2(32) = 5 as the cache blocks have size 32 bytes


// MSH-register table for the L2 cache
static mshr_t l2_mshr[L2_CACHE_NUM_MSHR] = {0}; // initialize at zero


// function to find a free MSHR or return -1 if there is none
static int find_free_mshr() {
    for (int i = 0; i < L2_CACHE_NUM_MSHR; ++i) { // iterate over all MSHRs
        if (l2_mshr[i].valid == 0) return i; // if a free MSHR is found we return
    }
    return -1; // if no free MSHR is found we return -1
}


// function to allocate an MSH-register and return its index in the MSHR table or return -1 if no free register is found
static int alloc_mshr(uint32_t address) {
    int32_t idx = find_free_mshr();
    if (idx >= 0) {
        l2_mshr[idx].done = 0; // request in process but not yet done
        l2_mshr[idx].valid = 1; // MSHR is in use
        l2_mshr[idx].address = address;
    }
    return idx;
}


// function to free a MSH-register
static void free_mshr(uint32_t idx) {
    if (idx >= 0 && idx < L2_CACHE_NUM_MSHR) {
        l2_mshr[idx].done = 0;
        l2_mshr[idx].valid = 0; // MSHR is not in use and can be reused
        l2_mshr[idx].address = 0;
        return;
    }
    fprintf(stderr, "[cache]error: invalid index!\n");
    fprintf(stderr, "\tIndex: %i is an invalid index.\n", idx);
    fprintf(stderr, "\tError occured in function cache.c/static void free_mshr(uint32_t idx)\n");
    exit(1);
}


// function to calculate the stall time upon an access to the L2 cache
static int l2_cache_stall(uint32_t in, cache_t* cache) {
    uint32_t tag = in >> cache->tag_shift;
    uint32_t set_index = (in >> cache->set_index_shift) & cache->set_index_off;

    cache_block_t* set = &cache->blocks[set_index*cache->n_ways]; // get the set from the cache

    // serach the set for a tag match
    for (int i = 0; i < cache->n_ways; ++i) {

        // check if we have a hit
        if (set[i].valid && set[i].tag == tag) {
            set[i].lru = cache_update_lru(set, i, set[i].lru, cache);
            return L2_CACHE_HIT_STALL; // we have a chache hit so we do not need to stall the pipeline
        }
    }

    // if we have a cache miss we need to allocate a MSHR
    uint32_t block_address = in >> L2_CACHE_BLOCK_OFFSET; // we look at the least significant bits od the address up to L2_CACHE_BLOCK_OFFSET
    int32_t mshr_idx = alloc_mshr(block_address);
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

    // update l2_mshr: this is somewhat redundant as we do not directly keep track of these metrics and only care about the stalls
    l2_mshr[mshr_idx].done = 1;
    free_mshr(mshr_idx);

    return L2_CACHE_MISS_STALL;
}



/*********************************
 *                               *
 *          L1 Caches            *
 *                               *
 *********************************/


#define L1_CACHE_HIT_STALL 0
#define L1_CHACH_MISS_STALL 50


// function to calculate the number of cycles we need to stall for to simulate the memory access
int cache_stall(uint32_t in, cache_t* cache, cache_t* l2_cache) {
    uint32_t tag = in >> cache->tag_shift;
    uint32_t set_index = (in >> cache->set_index_shift) & cache->set_index_off;

    cache_block_t* set = &cache->blocks[set_index*cache->n_ways]; // get the set from the cache

    // serach the set for a tag match
    for (int i = 0; i < cache->n_ways; ++i) {

        // check if we have a hit
        if (set[i].valid && set[i].tag == tag) {
            set[i].lru = cache_update_lru(set, i, set[i].lru, cache);
            return L1_CACHE_HIT_STALL; // we have a chache hit so we do not need to stall the pipeline
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

    return 50;

    // return l2_cache_stall(in, l2_cache); // if it is a cache miss then we stall for 50 cycles
}




// function to return for a cache if the cache is currently causing a stall
int cache_is_stall(cache_t* cache) {
    return cache->stall_counter > 0;
}

// function to return the valid state of the cache
int cache_valid(cache_t* cache) {
    return cache->valid;
}

// function to complete the handshake with the stall
void cache_ready(cache_t* cache) {
    cache->valid = 0;
}


// function to update the cache each cycle
void cache_update(cache_t* cache) {
    // decrease the stall counter
    if (cache->stall_counter > 0) {
        cache->stall_counter--;
        cache->valid = 0;
        // if the cache reaches zero in this cycle this means that the data at its output is now valid
        if (cache->stall_counter == 0) {
            cache->valid = 1;
        }
    }
}


// function to handle a memory request
void cache_access(cache_t* cache, cache_t* l2_cache, uint32_t in) {
    cache->stall_counter = cache_stall(in, cache, l2_cache); // update the stall counter

    // if there is a cache stall caused by this access then we stall the cache is invalidated
    if (cache->stall_counter > 0) {
        cache->valid = 0;
    }

    // if no stall is caused then the data is valid
    if (cache->stall_counter == 0) {
        cache->valid = 1;
    }
}