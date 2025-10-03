/*
 * dataCache.c:
 * 
 * Computer Architecture - Professor Onur Mutlu    
 * MIPS pipeline timing simulator
 * 
 * Author: <Frederic zur Bonsen>
 * E-Mail: <fzurbonsen@ethz.ch>
 * 
 * This file holds the implementation of the data cache for the MIPS simulator.
*/

#include "dataCache.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

/*
 * Define the data cache:
 * The data cache has 256 sets and is an eight-way cache.
*/
#define NUM_DATA_CACHE_SETS 256
#define NUM_DATA_CACHE_WAYS 8
data_cache_block_t data_cache[NUM_DATA_CACHE_SETS][NUM_DATA_CACHE_WAYS];


// function to init data cache
void data_cache_init() {
    for (int i = 0; i < NUM_DATA_CACHE_SETS; ++i) {
        for (int j = 0; j < NUM_DATA_CACHE_WAYS; ++j) {
            data_cache[i][j].valid = 0;
            data_cache[i][j].tag = 0;
            data_cache[i][j].lru = 0;
        }
    }
}


// function to update the lru of the current set
int data_cache_update_lru(data_cache_block_t *set, uint32_t way, int lru) {

    // iterate over all ways in the set and update their lru
    for (int i = 0; i < NUM_DATA_CACHE_WAYS; ++i) {

        // if the lru is bigger then the current lru, i.e.it has been used more recently then we need to shift it
        if (set[i].valid && set[i].lru > lru)
            set[i].lru--;
    }

    // return the top lru
    return NUM_DATA_CACHE_WAYS-1;
}


// function to calculate the number of cycles we need to stall for to simulate the memory access
int data_cache_stall_mem_read(uint32_t addr) {
    uint32_t tag = addr >> 13; //  PC[31:13]
    uint32_t set_index = (addr >> 5) & 0xFF; // PC[12:5]

    data_cache_block_t *set = data_cache[set_index]; // get the set from the cache

    // serach the set for a tag match
    for (int i = 0; i < NUM_DATA_CACHE_WAYS; ++i) {

        // check if we have a hit
        if (set[i].valid && set[i].tag == tag) {
            set[i].lru = data_cache_update_lru(set, i, set[i].lru);
            return 0; // we have a chache hit so we do not need to stall the pipeline
        }
    }

    // if we have a cache miss we add to the cache and stall for 50 cycles
    int victim = -1;
    int min_lru = NUM_DATA_CACHE_WAYS;

    // find either an invalid entry or the LRU block
    for (int i = 0; i < NUM_DATA_CACHE_WAYS; ++i) {

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
    set[victim].lru = data_cache_update_lru(set, victim, 0);

    return 50; // if it is a cache miss then we stall for 50 cycles
}