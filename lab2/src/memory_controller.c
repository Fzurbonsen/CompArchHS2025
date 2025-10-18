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

#define DRAM_BANK_INDEX_SHIFT 5
#define DRAM_BANK_INDEX_OFFSET 0x7u
#define DRAM_ROW_INDEX_SHIFT 16

#define DRAM_CMD_CYCLES 4
#define DRAM_BANK_BUSY_CYCLES 100
#define DRAM_DATA_CYCLES 50

#define L2_CACHE_MEMORY_DELAY 5 + 5




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
    mem_con->cmd_bus_cycle = 0;
    mem_con->data_bus_cycle = 0;

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


// function to get bank index
static uint32_t get_bank_idx(uint32_t address) {
    return (address >> DRAM_BANK_INDEX_SHIFT) & DRAM_BANK_INDEX_OFFSET;
}


// function to get row index
static uint32_t get_row_idx(uint32_t address) {
    return address >> DRAM_ROW_INDEX_SHIFT;
}


// function to get row buffer state of a memory request
static row_buffer_state_e get_row_buffer_state(mem_con_t* mem_con, mem_req_t* mem_req) {
    uint32_t bank_idx = get_bank_idx(mem_req->address);
    uint32_t row_idx = get_row_idx(mem_req->address);

    dram_bank_t* banks = mem_con->banks;

    if (!banks[bank_idx].row_open)
        return ROW_BUFFER_MISS;

    if (banks[bank_idx].open_row_idx == row_idx)
        return ROW_BUFFER_HIT;
    return ROW_BUFFER_CONFLICT;
}


// function to decide which of two memory requests to schedule first
static mem_req_t* find_prio_req(mem_con_t* mem_con, mem_req_t* mem_req1, mem_req_t* mem_req2) {

    // rule 1: row-buffer hits win over everything else:
    row_buffer_state_e state1 = get_row_buffer_state(mem_con, mem_req1);
    row_buffer_state_e state2 = get_row_buffer_state(mem_con, mem_req2);
    if (state1 == ROW_BUFFER_HIT && state2 != ROW_BUFFER_HIT) return mem_req1;
    if (state2 == ROW_BUFFER_HIT) return mem_req2;

    // rule 2: older requests get prioritized:
    if (mem_req1->cycle < mem_req2->cycle) return mem_req1;
    if (mem_req2->cycle < mem_req1->cycle) return mem_req2;

    // rule 3: dcache requests get prioritized
    if (mem_req1->mem_stage) return mem_req1;
    return mem_req2;
}


// function to determine if a request is schedulable
static int8_t is_schedulable(mem_con_t* mem_con, mem_req_t* mem_req) {
    row_buffer_state_e state = get_row_buffer_state(mem_con, mem_req);

    // counters to determine when what bus/bank is used
    uint32_t cmd_access_start = mem_con->cycle;
    uint32_t cmd_access_end = mem_con->cycle;
    uint32_t bank_access_end = mem_con->cycle;
    uint32_t data_access_end = mem_con->cycle;



    switch (state) {
        case ROW_BUFFER_HIT: // READ/WRITE
            cmd_access_end = cmd_access_start + DRAM_CMD_CYCLES * 1;
            bank_access_end = cmd_access_end + DRAM_BANK_BUSY_CYCLES;
            data_access_end = bank_access_end + DRAM_DATA_CYCLES;
            break;

        case ROW_BUFFER_MISS: // ACTIVATE, READ/WRITE
            cmd_access_end = cmd_access_start + DRAM_CMD_CYCLES * 2;
            bank_access_end = cmd_access_end + DRAM_BANK_BUSY_CYCLES;
            data_access_end = bank_access_end + DRAM_DATA_CYCLES;
            break;

        case ROW_BUFFER_CONFLICT: // PRECHARGE, ACTIVATE, READ/WRITE
            cmd_access_end = cmd_access_start + DRAM_CMD_CYCLES * 3;
            bank_access_end = cmd_access_end + DRAM_BANK_BUSY_CYCLES;
            data_access_end = bank_access_end + DRAM_DATA_CYCLES;
            break;

        default:
            fprintf(stderr, "[mem_con]error: invalid row buffer state!\n");
            fprintf(stderr, "The state %i is not recognized.\n", state);
            fprintf(stderr, "Error occured at: memory_controller.c/is_schedulable(mem_con_t* mem_con, mem_req_t* mem_req)\n");
            exit(1);
    }

    // decrease to account for lost initial cycle
    cmd_access_end--;
    data_access_end--;


    // condition 1: command and address bus have to be free for the entire access
    for (int cycle = cmd_access_start; cycle < cmd_access_end; ++cycle) {
        if (cycle < mem_con->cmd_bus_cycle) // if the access is before the cmd/address bus is free we return 0
            return 0;
    }

    // condition 2: bank must not be busy for the entire access
    if (cmd_access_start < mem_con->banks[get_bank_idx(mem_req->address)].busy_cycle)
        return 0;

    // condition 3: data bus has to be free for the data transfer
    for (int cycle = bank_access_end; cycle < data_access_end; ++cycle) {
        if (cycle < mem_con->data_bus_cycle)
            return 0;
    }

    return 1;
}


// function to issue memory request
static void issue_mem_req(mem_con_t* mem_con, mem_req_t* mem_req) {
    row_buffer_state_e state = get_row_buffer_state(mem_con, mem_req);
    uint32_t row = get_row_idx(mem_req->address);
    dram_bank_t* bank = &mem_con->banks[get_bank_idx(mem_req->address)];

    // counters to determine when what bus/bank is used
    uint32_t cycles = mem_con->cycle;



    switch (state) {
        case ROW_BUFFER_HIT:
            cycles += DRAM_CMD_CYCLES;
            break;

        case ROW_BUFFER_MISS:
            cycles += DRAM_CMD_CYCLES * 2;
            bank->row_open = 1;
            bank->open_row_idx = row;
            break;

        case ROW_BUFFER_CONFLICT:
            cycles += DRAM_CMD_CYCLES * 3;
            bank->row_open = 1;
            bank->open_row_idx = row;
            break;

        default:
            fprintf(stderr, "[mem_con]error: invalid row buffer state!\n");
            fprintf(stderr, "The state %i is not recognized.\n", state);
            fprintf(stderr, "Error occured at: memory_controller.c/issue_mem_req(mem_con_t* mem_con, mem_req_t* mem_req)\n");
            exit(1);
    }

    // updated the bus/bank metatdata
    mem_con->cmd_bus_cycle = cycles;
    bank->busy_cycle = cycles + DRAM_BANK_BUSY_CYCLES;
    mem_con->data_bus_cycle = cycles + DRAM_BANK_BUSY_CYCLES + DRAM_DATA_CYCLES;

    // update the MSHR
    mem_req->mshr->ready_cycle = cycles + DRAM_BANK_BUSY_CYCLES + DRAM_DATA_CYCLES + L2_CACHE_MEMORY_DELAY - 1;

    mem_req->valid = 0; // invalidate the memory request as it has been processed
}




/*********************************
 *                               *
 *     Memory Request Queue      *
 *                               *
 *********************************/


// function to print the entire queue
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


// function to push a request to the queue
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


// function to print the MSHRs
void mshr_print(FILE* file, mshr_t* mshr) {
    fprintf(file, "\t------------------MSHR TABLE------------------\n");
    fprintf(file, "\t| IDX\t| DONE\t| VALID\t| READY_CYCLE\t| ADDRESS\n");
    fprintf(file, "\t----------------------------------------------\n");
    for (int i = 0; i < L2_CACHE_NUM_MSHR; ++i) {
        fprintf(file, "\t| %i\t| %i\t| %i\t| %u\t\t| %u\n", i, mshr[i].done, mshr[i].valid, mshr[i].ready_cycle, mshr[i].address);
        fprintf(file, "\t----------------------------------------------\n");
    }
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
            // if a request is ready this cycle then we label it as done
            if (mshr->ready_cycle == mem_con->cycle) {
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

            // test if the request is schedulable
            if (is_schedulable(mem_con, curr_req)) {

                // if there is no previous request then select this one
                if (!req_found) {
                    mem_req = curr_req;
                    req_found = 1;
                } else {
                    // find the prioritized request
                    mem_req = find_prio_req(mem_con, curr_req, mem_req);
                }
            }
        }
    }

    if (!req_found)
        return;

    // issue the memory request
    issue_mem_req(mem_con, mem_req);
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
