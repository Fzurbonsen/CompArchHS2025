/*
 * cache.h:
 * 
 * Computer Architecture - Professor Onur Mutlu    
 * MIPS pipeline timing simulator
 * 
 * Author: <Frederic zur Bonsen>
 * E-Mail: <fzurbonsen@ethz.ch>
 * 
 * This file holds the definitions of the file cache.c.
 * It provides the structures to implement the data cache simulation.
*/

#ifndef _CACHE_H_
#define _CACHE_H_

#include <stdint.h>

// chache block struct: this struct represents a signle cache block and stores the relevant metadata
typedef struct {
    uint32_t tag;
    int valid;
    int lru;
} cache_block_t;

typedef struct {
    cache_block_t* blocks;
    int n_sets;
    int n_ways;
    int tag_shift;
    int set_index_shift;
    uint32_t set_index_off;
} cache_t;

/*
 * PRE:
 * 
 * POST:
 *      return:     Initialized the data cache with 0.
*/
cache_t* cache_init(int n_sets, int n_ways, int tag_shift, int set_index_shift, uint32_t set_index_off);

void cache_destroy(cache_t* cache);

/*
 * PRE:
 *      addr:       uint32_t that holds the address of the memory access.
 * POST:
 *      return:     int that holds the number of cycles we need to stall the memory stage to
 *                  simulate the loading of the data.
*/
int cache_stall(uint32_t in, cache_t* cache);

#endif // _CACHE_H_