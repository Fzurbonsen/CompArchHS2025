/*
 * dataCache.h:
 * 
 * Computer Architecture - Professor Onur Mutlu    
 * MIPS pipeline timing simulator
 * 
 * Author: <Frederic zur Bonsen>
 * E-Mail: <fzurbonsen@ethz.ch>
 * 
 * This file holds the definitions of the file dataCache.c.
 * It provides the structures to implement the data cache simulation.
*/

#ifndef _DATACACHE_H_
#define _DATACACHE_H_

#include "shell.h"
#include "pipe.h"
#include <stdint.h>

// chache block struct: this struct represents a signle cache block and stores the relevant metadata
typedef struct {
    uint32_t tag; // tag PC >> 13 the [31:13] bits in the PC
    int valid; // is this a valid cache block
    int lru; // smaller = less recently used
} data_cache_block_t;

/*
 * PRE:
 * 
 * POST:
 *      return:     Initialized the data cache with 0.
*/
void data_cache_init();

/*
 * PRE:
 *      addr:       uint32_t that holds the address of the memory access.
 *      is_stor:    int that indicates whether the operation is a store or a read.
 * POST:
 *      return:     int that holds the number of cycles we need to stall the memory stage to
 *                  simulate the loading of the data.
*/
int data_cache_stall_mem_read(uint32_t addr);

#endif // _DATACACHE_H_