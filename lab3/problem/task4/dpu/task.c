/*
* AXPY with multiple tasklets
*
*/
#include <stdint.h>
#include <stdio.h>
#include <defs.h>
#include <mram.h>
#include <alloc.h>
#include <perfcounter.h>
#include <barrier.h>

#include "../support/common.h"
#include "../support/cyclecount.h"

// #define SINGLE_TASKLET
#define ZERO_TASKLET_COLLECTION
// #define TREE_BASED_BARRIERS
// #define TREE_BASED_HANDSHAKES
// #define MUTEX

// Input and output arguments
__host dpu_arguments_t DPU_INPUT_ARGUMENTS;
__host dpu_results_t DPU_RESULTS[NR_TASKLETS];

// Barrier
BARRIER_INIT(my_barrier, NR_TASKLETS);

extern int main_kernel1(void);
int (*kernels[nr_kernels])(void) = {main_kernel1};
int main(void) { 
    // Kernel
    return kernels[DPU_INPUT_ARGUMENTS.kernel](); 
}

// intermediate value to hold the tasklet results
static T tasklet_results[NR_TASKLETS] = {0};

// VEC_RED: compute VEC_RED of a cached block
static void vec_red(T* bufferX, unsigned int l_size, unsigned int tasklet_id) {
    for (unsigned int i = 0; i < l_size; ++i) {
        tasklet_results[tasklet_id] += bufferX[i];
    }
}

// single tasklet case:
static T red_single_tasklet() {
    return tasklet_results[0];
}

// 0-tasklet collection
static T red_zero_tasklet_collection(unsigned int tasklet_id) {

    // wait for all tasklets to complete
    barrier_wait(&my_barrier);

    if (tasklet_id == 0) {
        T total_sum = 0;
        for (unsigned int i = 0; i < NR_TASKLETS; ++i) {
            total_sum += tasklet_results[i];
        }
        return total_sum;
    }
    return 0;
}

// // barrier case:
// static T red_tree_based_barriers(unsigned int tasklet_id) {

//     // wait for all tasklets to complete
//     barrier_wait(&my_barrier);

//     // get the result of this tasklet
//     T value = tasklet_results[tasklet_id];

//     // find neighbouring tasklets
//     for (unsigned int hood = 1; hood < NR_TASKLETS; hood *= 2) {
//         unsigned int hood_size = hood * 2;
//         // only let the first entry in the hood collect
//         if (tasklet_id % hood_size == 0) {
//             T gang_value =
//         }

//     }
//     return total_sum;
// }

static T red_tree_based_handshakes(unsigned int tasklet_id) {
    T total_sum = 0;
    for (unsigned int i = 0; i < NR_TASKLETS; ++i) {
        total_sum += tasklet_results[i];
    }
    return total_sum;
}

// reduce the tasklets
static T red_tasklet(unsigned int tasklet_id) {
#if defined(SINGLE_TASKLET)
    return red_single_tasklet();
#elif defined(ZERO_TASKLET_COLLECTION)
    return red_zero_tasklet_collection(tasklet_id);
#elif defined(TREE_BASED_BARRIERS)
    return red_tree_based_barriers(tasklet_id);
#elif defined(TREE_BASED_HANDSHAKES)

#else // MUTEX case
#endif
}

// main_kernel1
int main_kernel1() {
    unsigned int tasklet_id = me();
#if PRINT
    printf("tasklet_id = %u\n", tasklet_id);
#endif
    if (tasklet_id == 0){ 
        mem_reset(); // Reset the heap
#ifdef CYCLES
        perfcounter_config(COUNT_CYCLES, true); // Initialize once the cycle counter
#elif defined(INSTRUCTIONS)
        perfcounter_config(COUNT_INSTRUCTIONS, true); // Initialize once the instruction counter
#endif
    }

    // Barrier
    barrier_wait(&my_barrier);

#if defined(CYCLES) || defined(INSTRUCTIONS)
    perfcounter_count count;
    dpu_results_t *result = &DPU_RESULTS[tasklet_id];
    result->count = 0;
    counter_start(&count); // START TIMER
#endif

    uint32_t input_size_dpu_bytes = DPU_INPUT_ARGUMENTS.size; // Input size per DPU in bytes
    uint32_t input_size_dpu_bytes_transfer = DPU_INPUT_ARGUMENTS.transfer_size; // Transfer input size per DPU in bytes


    // Address of the current processing block in MRAM
    uint32_t base_tasklet = tasklet_id << BLOCK_SIZE_LOG2;
    uint32_t mram_base_addr_X = (uint32_t)DPU_MRAM_HEAP_POINTER;

    // Initialize a local cache in WRAM to store the MRAM block
    T* wram_x = (T*)(((uintptr_t)mem_alloc(BLOCK_SIZE + 8) + 7) & ~0x7); // force 8-bit alignment

    if (!wram_x) {
        printf("error: mem_alloc failed\n");
        exit(1);
    }
    if (((uint32_t)wram_x % 8) != 0) {
        printf("error: WRAM buffer not 8-byte aligned\n");
        exit(1);
    }

    for(unsigned int byte_index = base_tasklet; byte_index < input_size_dpu_bytes; byte_index += BLOCK_SIZE * NR_TASKLETS){

        // initialize local variables
        __mram_ptr T* x_ptr = (__mram_ptr T*)(mram_base_addr_X + byte_index);
        uint32_t mem_access_size = BLOCK_SIZE;


        // Bound checking
        if (byte_index + BLOCK_SIZE > input_size_dpu_bytes) {
            mem_access_size = input_size_dpu_bytes - byte_index;
            printf("pruning: %i\n", mem_access_size/(sizeof(T)));
        }
        /* - The source of target address in WRAM must be aligned on 8 bytes.
         * - The source or target address in MRAM must be aligned on 8 bytes.
         *   Developers must carefully respect this rule since the Runtime Library
         *   does not perform any check regarding this point.
         * - The size of the transfer must be a multiple of 8, at least equal 
         *   to 8 and not greater then 2048.
        */ 
        if (!(mem_access_size % 8 == 0) ||
            !(mem_access_size >= 8) ||
            !(mem_access_size <= 2048)) {
            printf("error: memory access size violation!\n");
            printf("\tmem_access_size %i does not fulfill the conditions:\n", mem_access_size);
            printf("\tThe size of the transfer must be a multiple of 8, at least equal to 8 and not greater then 2048.");
            exit(1);
        }
        // check if mem_access_size is a multiple of T
        if (!(mem_access_size % sizeof(T) == 0)) {
            printf("error: mem_access_size is not multiple of sizeof(T)!\n");
            printf("\tmem_access_size %i is not multiple of sizeof(T): %i\n", mem_access_size, sizeof(T));
            exit(1);
        }


        // Load cache with current MRAM block
        mram_read(x_ptr, wram_x, mem_access_size);

        // Computer vector reduction
        vec_red(wram_x, (unsigned int)(mem_access_size / sizeof(T)), tasklet_id);

        // Write cache to current MRAM block
        mram_write(wram_x, x_ptr, mem_access_size);
    }

    // reduce all the tasklets into one value
    T tasklet_sum = red_tasklet(tasklet_id);

    if (tasklet_id == 0) {
        mram_write(&tasklet_sum, (__mram_ptr T*)mram_base_addr_X, 8*(sizeof(T)/8 + 1));
    }

#if defined(CYCLES) || defined(INSTRUCTIONS)
    result->count += counter_stop(&count); // STOP TIMER
#endif
	
    return 0;
}
