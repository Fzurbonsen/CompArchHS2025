/*
 * instructionCache.h:
 * 
 * Computer Architecture - Professor Onur Mutlu    
 * MIPS pipeline timing simulator
 * 
 * Author: <Frederic zur Bonsen>
 * E-Mail: <fzurbonsen@ethz.ch>
 * 
 * This file holds the definitions of the file instructinoCache.c.
 * It provides the structures to implement the instruction cache simulation.
*/

#ifndef _INSTRUCTIONCACHE_H_
#define _INSTRUCTIONCACHE_H_

#include "shell.h"
#include "pipe.h"
#include <stdint.h>

// chache block struct: this struct represents a signle cache block and stores the relevant metadata
typedef struct {
    uint32_t tag; // tag PC >> 11 the [31.11] bits in the PC
    int valid; // is this a valid cache block
    int lru; // smaller = less recently used
} instruction_cache_block_t;

/*
 * PRE:
 * 
 * POST:
 *      return:     Initialized the instruction cache with 0.
*/
void instruction_cache_init();

/*
 * PRE:
 *      PC:         uint32_t that holds the program counter of the instruction to be fetched.
 * POST:
 *      return:     int that holds the number of cycles we need to stall the fetch stage to
 *                  simulate the loading of the instruction.
*/
int instruction_cache_stall_mem_read(uint32_t PC);

#endif // _INSTRUCTIONCACHE_H_