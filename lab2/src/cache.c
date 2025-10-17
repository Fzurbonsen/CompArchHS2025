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


// MSH-register table for the L2 cache
static mshr_t l2_mshr[L2_CACHE_NUM_MSHR] = {0}; // initialize at zero


// function to find a free MSHR or return -1 if there is none
static int find_free_mshr() {
    for (int i = 0; i < L2_CACHE_NUM_MSHR; ++i) { // iterate over all MSHRs
        if (l2_mshr[i].valid) return i; // if a free MSHR is found we return
    }
    return -1; // if no free MSHR is found we return -1
}


// function to allocate an MSH-register and return its index in the MSHR table or return -1 if no free register is found
static int alloc_mshr(uint32_t address) {
    uint32_t idx = find_free_mshr();
    if (idx >= 0) {
        l2_mshr[idx].done = 0; // request in process but not yet done
        l2_mshr[idx].valid = 0; // MSHR is in use
        l2_mshr[idx].address = address;
    }
    return idx;
}


// function to free a MSH-register
static void free_mshr(uint32_t idx) {
    if (idx >= 0 && idx < L2_CACHE_NUM_MSHR) {
        l2_mshr[idx].done = 0;
        l2_mshr[idx].valid = 1; // MSHR is not in use and can be reused
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

    return 50;
}



/*********************************
 *                               *
 *          L1 Caches            *
 *                               *
 *********************************/


#define L1_CACHE_HIT_STALL 0


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

    return l2_cache_stall(in, l2_cache); // if it is a cache miss then we stall for 50 cycles
}