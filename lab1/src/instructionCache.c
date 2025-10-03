/*
 * instructionCache.c:
 * 
 * Computer Architecture - Professor Onur Mutlu    
 * MIPS pipeline timing simulator
 * 
 * Author: <Frederic zur Bonsen>
 * E-Mail: <fzurbonsen@ethz.ch>
 * 
 * This file holds the implementation of the instruction cache for the MIPS simulator.
*/

#include "instructionCache.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

/*
 * Define the instruction cache:
 * The instruction cache has 64 sets and is a four-way cache.
*/
#define NUM_INSTRUCTION_CACHE_SETS 64
#define NUM_INSTRUCTION_CACHE_WAYS 4
instruction_cache_block_t instruction_cache[NUM_INSTRUCTION_CACHE_SETS][NUM_INSTRUCTION_CACHE_WAYS];


// function to init insturction cache
void instruction_cache_init() {
    for (int i = 0; i < NUM_INSTRUCTION_CACHE_SETS; ++i) {
        for (int j = 0; j < NUM_INSTRUCTION_CACHE_WAYS; ++j) {
            instruction_cache[i][j].valid = 0;
            instruction_cache[i][j].tag = 0;
            instruction_cache[i][j].lru = 0;
        }
    }
}


// function to update the lru of the current set
int instruction_cache_update_lru(instruction_cache_block_t *set, uint32_t way, int lru) {

    // iterate over all ways in the set and update their lru
    for (int i = 0; i < NUM_INSTRUCTION_CACHE_WAYS; ++i) {

        // if the lru is bigger then the current lru, i.e.it has been used more recently then we need to shift it
        if (set[i].valid && set[i].lru > lru)
            set[i].lru--;
    }

    // return the top lru
    return NUM_INSTRUCTION_CACHE_WAYS-1;
}


// function to calculate the number of cycles we need to stall for to simulate the fetching of the instruction
int instruction_cache_stall_mem_read(uint32_t PC) {
    uint32_t tag = PC >> 11; // PC[31:11]
    uint32_t set_index = (PC >> 5) & 0x3F; // PC[10:5]

    instruction_cache_block_t *set = instruction_cache[set_index]; // get the set from the cache

    // seach the set for a tag match
    for (int i = 0; i < NUM_INSTRUCTION_CACHE_WAYS; ++i) {

        // check if we have a hit
        if (set[i].valid && set[i].tag == tag) {
            set[i].lru = instruction_cache_update_lru(set, i, set[i].lru); // update the LRU
            return 0; // we have a chache hit so we do not need to stall the pipeline
        }
    }

    // if we have a cache miss add to the cache and stall for 50 cycles
    int victim = -1;
    int min_lru = NUM_INSTRUCTION_CACHE_WAYS;

    // find either an invalid entry or the LRU block
    for (int i = 0; i < NUM_INSTRUCTION_CACHE_WAYS; ++i) {

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
    set[victim].lru = instruction_cache_update_lru(set, victim, 0);

    return 50; // if it is a cache miss then we stall for 50 cycles.
}