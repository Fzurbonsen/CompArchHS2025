/*
 * memory_controller.c:
 * 
 * Computer Architecture - Professor Onur Mutlu    
 * MIPS pipeline timing simulator
 * 
 * Author: <Frederic zur Bonsen>
 * E-Mail: <fzurbonsen@ethz.ch>
 * 
 * This file holds the implementation of the memory controller for the MIPS simulator.
*/


#include "memory_controller.h"


/*********************************
 *                               *
 *       Struct Management       *
 *                               *
 *********************************/

// mem_con constructor
mem_con_t* mem_con_init(size_t n_banks, size_t n_rows, size_t row_size, size_t queue_alloc) {
    mem_con_t* mem_con = (mem_con_t*)malloc(sizeof(mem_con_t));

    // init banks
    mem_con->n_banks = n_banks;
    mem_con->n_rows = n_rows;
    mem_con->row_size = row_size;
    mem_con->banks = (dram_bank_t*)calloc(1, n_banks*sizeof(dram_bank_t));

    // init memory request queue
    mem_con->queue_size = 0;
    mem_con->queue_alloc = queue_alloc;
    mem_con->queue = (mem_req_t*)calloc(1, mem_con->queue_alloc*sizeof(mem_req_t));

    // init counters
    mem_con->cmd_bus_counter = 0;
    mem_con->data_bus_counter = 0;

    // init MSHR
    for (int i = 0; i < L2_CACHE_NUM_MSHR; ++i) {
        mem_con->l2_mshr[i].done = 0;
        mem_con->l2_mshr[i].valid = 0;
        mem_con->l2_mshr[i].address = 0;
        mem_con->l2_mshr[i].type = UNDEF;
    }

    // return the built struct
    return mem_con;
}


// mem_con destructor
void mem_con_destroy(mem_con_t* mem_con) {
    free(mem_con->banks); // free the banks
    free(mem_con->queue); // free the queue
    mem_con->queue_alloc = 0;
    free(mem_con);
}




/*********************************
 *                               *
 *        Cache Interface        *
 *                               *
 *********************************/

void mem_con_access(mem_con_t* mem_con, uint32_t mshr_idx) {
    mshr_t* mshr = &mem_con->l2_mshr[mshr_idx]; // get MSHR
    fprintf(stderr, "\t| %i\t| %i\t| %i\t| %u\n", mshr_idx, mshr->done, mshr->valid, mshr->address);
}