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


// function to init data cache
cache_t* cache_init(int n_sets, int n_ways, int tag_shift, int set_index_shift, uint32_t set_index_off) {
    cache_t* cache = (cache_t*)calloc(1, sizeof(cache_t));
    cache->blocks = (cache_block_t*)calloc(1, n_sets*n_ways*sizeof(cache_block_t));
    cache->n_sets = n_sets;
    cache->n_ways = n_ways;
    cache->tag_shift = tag_shift;
    cache->set_index_shift = set_index_shift;
    cache->set_index_off = set_index_off;

    // for fifo implementation
    cache->fifo_head = (uint64_t*)calloc(1, n_sets*sizeof(uint64_t));

    return cache;
}


// function to destroy cache_t struct
void cache_destroy(cache_t* cache) {
    free(cache->fifo_head);
    free(cache->blocks);
    free(cache);
}


/*
 * This file holds implementations for different replacement policies.
 * Depending on which version should be tested the required code can be commented
 * or uncommented. ALL THE VERSIONS USE THE SAME FUNCTION NAMES!
*/


/*********************************
 *                               *
 *          LRU CACHE            *
 *                               *
 *********************************/


// // function to update the lru of the current set
// int cache_update_lru(cache_block_t *set, uint32_t way, int lru, cache_t* cache) {

//     // iterate over all ways in the set and update their lru
//     for (int i = 0; i < cache->n_ways; ++i) {

//         // if the lru is bigger then the current lru, i.e.it has been used more recently then we need to shift it
//         if (set[i].valid && set[i].lru > lru)
//             set[i].lru--;
//     }

//     // return the top lru
//     return cache->n_ways-1;
// }


// // function to calculate the number of cycles we need to stall for to simulate the memory access
// int cache_stall(uint32_t in, cache_t* cache) {
//     uint32_t tag = in >> cache->tag_shift; //  PC[31:13]
//     uint32_t set_index = (in >> cache->set_index_shift) & cache->set_index_off; // PC[12:5]

//     uint32_t tag2 = in >> 11; //  PC[31:13]
//     uint32_t set_index2 = (in >> 5) & 0x3F; // PC[12:5]

//     cache_block_t* set = &cache->blocks[set_index*cache->n_ways]; // get the set from the cache

//     // serach the set for a tag match
//     for (int i = 0; i < cache->n_ways; ++i) {

//         // check if we have a hit
//         if (set[i].valid && set[i].tag == tag) {
//             set[i].lru = cache_update_lru(set, i, set[i].lru, cache);
//             return 0; // we have a chache hit so we do not need to stall the pipeline
//         }
//     }

//     // if we have a cache miss we add to the cache and stall for 50 cycles
//     int victim = -1;
//     int min_lru = cache->n_ways;

//     // find either an invalid entry or the LRU block
//     for (int i = 0; i < cache->n_ways; ++i) {

//         // check for invalid entry
//         if (!set[i].valid) {
//             victim = i;
//             break; // if we find an invalid entry we can break
//         }

//         // find the LRU block
//         if (set[i].lru < min_lru) {
//             min_lru = set[i].lru;
//             victim = i;
//         }
//     }

//     // insert the new block
//     set[victim].tag = tag;
//     set[victim].valid = 1;
//     set[victim].lru = cache_update_lru(set, victim, 0, cache);

//     return 50; // if it is a cache miss then we stall for 50 cycles
// }




/*********************************
 *                               *
 *          FIFO CACHE           *
 *                               *
 *********************************/


// // function to calculate the number of cycles we need to stall for to simulate the memory access
// int cache_stall(uint32_t in, cache_t* cache) {
//     uint32_t tag = in >> cache->tag_shift; //  PC[31:13]
//     uint32_t set_index = (in >> cache->set_index_shift) & cache->set_index_off; // PC[12:5]

//     cache_block_t* set = &cache->blocks[set_index*cache->n_ways]; // get the set from the cache

//     // serach the set for a tag match
//     for (int i = 0; i < cache->n_ways; ++i) {

//         // check if we have a hit
//         if (set[i].valid && set[i].tag == tag) {
//             return 0; // we have a chache hit so we do not need to stall the pipeline
//         }
//     }

//     // if we have a cache miss we add to the cache and stall for 50 cycles
//     int victim = -1;
//     uint64_t oldest = UINT64_MAX;

//     // find either an invalid entry or the oldest entry
//     for (int i = 0; i < cache->n_ways; ++i) {

//         // check for invalid entry
//         if (!set[i].valid) {
//             victim = i;
//             break; // if we find an invalid entry we can break
//         }

//         // find the oldest entry
//         if (set[i].fifo_counter < oldest) {
//             oldest = set[i].fifo_counter;
//             victim = i;
//         }
//     }

//     // insert the new block
//     set[victim].tag = tag;
//     set[victim].valid = 1;
//     set[victim].fifo_counter = cache->fifo_head[set_index]++;

//     return 50; // if it is a cache miss then we stall for 50 cycles
// }



/*********************************
 *                               *
 *          RANDOM CACHE         *
 *                               *
 *********************************/


// function to calculate the number of cycles we need to stall for to simulate the memory access
int cache_stall(uint32_t in, cache_t* cache) {
    uint32_t tag = in >> cache->tag_shift; //  PC[31:13]
    uint32_t set_index = (in >> cache->set_index_shift) & cache->set_index_off; // PC[12:5]

    cache_block_t* set = &cache->blocks[set_index*cache->n_ways]; // get the set from the cache

    // serach the set for a tag match
    for (int i = 0; i < cache->n_ways; ++i) {

        // check if we have a hit
        if (set[i].valid && set[i].tag == tag) {
            return 0; // we have a chache hit so we do not need to stall the pipeline
        }
    }

    // if we have a cache miss we add to the cache and stall for 50 cycles
    int victim = -1;

    // find either an invalid entry or the oldest entry
    for (int i = 0; i < cache->n_ways; ++i) {

        // check for invalid entry
        if (!set[i].valid) {
            victim = i;
            break;
        }
    }

    // check if we found an invalid entry
    if (victim == -1) {
        int r = rand(); // create pseudo random number
        victim = r % cache->n_ways;
    }

    // insert the new block
    set[victim].tag = tag;
    set[victim].valid = 1;

    return 50; // if it is a cache miss then we stall for 50 cycles
}