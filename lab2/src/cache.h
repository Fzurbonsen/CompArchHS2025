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
#include "memory_controller.h"

// chache block struct: this struct represents a single cache block and stores the relevant metadata
typedef struct {
    uint32_t tag;
    int valid;
    int lru;
} cache_block_t;

// cache struct
typedef struct {
    // cache metadata
    cache_type_e type;
    cache_block_t* blocks;
    uint32_t stall_counter; // counter to track the memory access
    int8_t valid; // indicator wether the cache output is valid
    int8_t is_stall; // indicator whether the cache is stalled

    // cache config
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
cache_t* cache_init(int n_sets, int n_ways, int tag_shift, int set_index_shift, uint32_t set_index_off, cache_type_e type);

void cache_destroy(cache_t* cache);


// function to return for a cache if the cache is currently causing a stall
int cache_is_stall(cache_t* cache);

// function to return the valid state of the cache
int cache_valid(cache_t* cache);
void cache_ready(cache_t* cache);


// function to update the cache each cycle
void l1_cache_update(cache_t* cache);
void l2_cache_update(cache_t* cache, mem_con_t* mem_con, cache_t* icache, cache_t* dcache);
void cache_flush(cache_t* cache);


// function to handle a memory request
void cache_access(cache_t* cache, cache_t* l2_cache, mem_con_t* mem_con, uint32_t in);

#endif // _CACHE_H_