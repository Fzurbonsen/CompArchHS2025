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
 *      Memory Controller        *
 *                               *
 *********************************/




// function to decide which of two memory requests to schedule first
static mem_req_t* find_prio_req(mem_req_t* mem_req1, mem_req_t* mem_req2) {

    

}

static int8_t is_schedulable(mem_con_t* mem_con, mem_req_t* mem_req) {

    return 1;
}




/*********************************
 *                               *
 *     Memory Request Queue      *
 *                               *
 *********************************/

static void mem_queue_print(FILE* file, mem_con_t* mem_con) {
    fprintf(file, "\t-----------MEMORY REQUEST QUEUE-----------\n");
    fprintf(file, "\t| VALID\t| MSHR\t| MEM\t| CYCLE\t| ADDR\n");
    fprintf(file, "\t------------------------------------------\n");
    for (int i = 0; i < mem_con->queue_alloc; ++i) {
        fprintf(file, "\t| %i\t| %u\t| %i\t| %lu\t| %u\n", mem_con->queue[i].valid, 
                                                            mem_con->queue[i].mshr_idx, 
                                                            mem_con->queue[i].mem_stage, 
                                                            mem_con->queue[i].cycle, 
                                                            mem_con->queue[i].address);
        fprintf(file, "\t------------------------------------------\n");
    }
    fprintf(file, "\n");
}

static void mem_queue_push_back(mem_con_t* mem_con, mshr_t* mshr) {
    mem_con->queue_size++; // increment queue size
    if (mem_con->queue_size > mem_con->queue_alloc) {
        mem_con->queue_alloc *= 2;
        mem_con->queue = (mem_req_t*)realloc(mem_con->queue, mem_con->queue_alloc*sizeof(mem_req_t));
        
        // invalidate new memory
        for (int i = mem_con->queue_size; i < mem_con->queue_alloc; ++i) {
            mem_con->queue[i].valid = 0;
        }
    }

    // iterate over array to find a free entry
    for (int i = 0; i < mem_con->queue_alloc; ++i) {
        if (mem_con->queue[i].valid == 0) { // if we find a free entry we fill it
            mem_con->queue[i].mshr = mshr;
            mem_con->queue[i].mshr_idx = mshr->idx;
            mem_con->queue[i].address = mshr->address;
            mem_con->queue[i].cycle = mshr->cycle;
            mem_con->queue[i].mem_stage = mshr->type == DCACHE ? 1 : 0;
            mem_con->queue[i].valid = 1;
            return;
        }
    }

    fprintf(stderr, "[mem_con]error: queue full!\n");
    fprintf(stderr, "Tried did not find an empty spot in queue\n");
    mem_queue_print(stderr, mem_con);
    exit(1);
}




/*********************************
 *                               *
 *       Pipeline Interface      *
 *                               *
 *********************************/


 // function to update memory controller
 void mem_con_update(mem_con_t* mem_con, uint64_t cycle) {
    mem_con->cycle = cycle; // update cycle counter

    // decrement all memory requests (stored in the MSHRs)
    for (int i = 0; i < L2_CACHE_NUM_MSHR; ++i) {
        mshr_t* mshr = &mem_con->l2_mshr[i];
        if (mshr->valid) {
            mshr->ready_counter--;

            // if a request is ready this cycle then we label it as done
            if (mshr->ready_counter == 0) {
                mshr->done = 1;
            }
        }
    }

    // scan the memory request queue
    int8_t req_found = 0; // indicator to indicate if we found a request
    mem_req_t* mem_req;

    // iterate over all entries of the queue
    for (int i = 0; i < mem_con->queue_alloc; ++i) {
        mem_req_t* curr_req = &mem_con->queue[i];

        // filter only the valid entries
        if (curr_req->valid) {

            // test:
            // set the request to done and let the cache claim it
            curr_req->mshr->ready_counter = 49;
            curr_req->valid = 0;

            // test if the request is schedulable
            if (is_schedulable(mem_con, curr_req)) {

                // if there is no previous request then select this one
                if (!req_found) {
                    mem_req = curr_req;
                    req_found = 1;
                } else {
                    // find the prioritized request
                    mem_req = find_prio_req(curr_req, mem_req);
                }
            }
        }
    }

    if (!req_found)
        return;
 }




/*********************************
 *                               *
 *        Cache Interface        *
 *                               *
 *********************************/

void mem_con_access(mem_con_t* mem_con, uint32_t mshr_idx) {
    mshr_t* mshr = &mem_con->l2_mshr[mshr_idx]; // get MSHR
    // fprintf(stderr, "\t| %i\t| %i\t| %i\t| %li\t| %u\n", mshr_idx, mshr->done, mshr->valid, mshr->cycle, mshr->address);

    // add memory request to queue
    mem_queue_push_back(mem_con, mshr);
}
