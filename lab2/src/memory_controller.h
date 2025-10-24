/*
 * memory_controller.h:
 * 
 * Computer Architecture - Professor Onur Mutlu    
 * MIPS pipeline timing simulator
 * 
 * Author: <Frederic zur Bonsen>
 * E-Mail: <fzurbonsen@ethz.ch>
 * 
 * This file holds the definitions of the file memory_controller.c.
 * It provides the structures to implement the memory controller simulation.
*/


#ifndef _MEMORY_CONTROLLER_H_
#define _MEMORY_CONTROLLER_H_

#define L2_CACHE_NUM_MSHR 16

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>

// enum to identify the cache type
typedef enum {
    UNDEF,
    L2_CACHE,
    ICACHE,
    DCACHE
} cache_type_e;

// enum to hold the state of a row buffer
typedef enum {
    ROW_BUFFER_HIT,
    ROW_BUFFER_MISS,
    ROW_BUFFER_CONFLICT
} row_buffer_state_e;


// MSHR struct to allow interaction with L2 cache
typedef struct {
    int16_t done;
    int16_t valid;
    uint32_t address;
    cache_type_e type;
    uint64_t cycle;
    uint32_t idx;
    uint32_t ready_cycle;
} mshr_t;


// struct to hold memory requests
typedef struct mem_req_t{
    uint32_t address;
    int8_t mem_stage;
    mshr_t* mshr;
    uint32_t mshr_idx;
    int8_t valid; // indicator if this is a valid entry
    uint64_t cycle; // the cycle the request was issued
} mem_req_t;


// struct to hold the future usage of a limited resource
typedef struct {
    uint64_t cycle_0; // holds the cycle at the 0 position of the buffer
    int8_t* use; // use[n] tells whether a resource is used at cycle cycle_0+n
    size_t size; // n of predicted cycles
    int32_t index;
} res_buf_t;
/*
 * Resource Buffer:
 * The resource buffer struct is used to keep track of `size` cycles of future resource usage.
 * To acomplish this it holds an array of size `size` with either 0s or 1s inidcating that the resource is unused or used respectively
 * The resource buffer has to be updated before it is checked or filled. When it is updated the buffer array is shifted by the difference
 * of the last cycle it has been updated and the current cycle
 * 
 * Example with buffer of size 11:
 * 
 * Cycle = n: (initial state)
 * [0][1][1][1][0][1][1][0][0][0][1]
 *
 * Cycle = n + 5: (causes the next update, five is an arbitrary value)
 * [0][1][1][1][0][1][1][0][0][0][1]
 * <==============[1][1][0][0][0][1] - Shift the array to the left by 5
 * [1][1][0][0][0][1][0][0][0][0][0] - We fill the array with zeros at the end
*/


// struct to hold the DRAM banks
typedef struct {
    int8_t busy;
    uint32_t busy_cycle; // cycle untill which the bank is busy
    res_buf_t* res_buf; // resource buffer to keep track when the bank is free
    int8_t row_open;
    uint32_t open_row_idx;
} dram_bank_t;


// struct to hold the memory controller
typedef struct {
    // memory request queue
    mem_req_t* queue;
    size_t queue_size;
    size_t queue_alloc;

    // DRAM banks
    dram_bank_t* banks;
    size_t n_banks;
    size_t n_rows;
    size_t row_size;

    // bus counters
    uint32_t cmd_bus_cycle; // cycle untill which the cmd bus is used
    uint32_t data_bus_cycle; // cycle untill which the data bus is used
    res_buf_t* cmd_bus_buffer; // buffer to keep track of the cmd/address bus usage
    res_buf_t* data_bus_buffer; // buffer to keep track of the data bus usage

    // L2 cache interface
    mshr_t l2_mshr[L2_CACHE_NUM_MSHR];

    // cycle counter
    uint64_t cycle;
} mem_con_t;


// init and destroy
mem_con_t* mem_con_init(size_t n_banks, size_t n_rows, size_t row_size, size_t queue_alloc);
void mem_con_destroy(mem_con_t* mem_con);

// pipeline interface
void mem_con_update(mem_con_t* mem_con, uint64_t cycle);

// cache interface
void mem_con_access(mem_con_t* mem_con, uint32_t mshr_idx);


#endif // _MEMORY_CONTROLLER_H_