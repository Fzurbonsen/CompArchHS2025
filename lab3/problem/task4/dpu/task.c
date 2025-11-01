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
    T alpha = DPU_INPUT_ARGUMENTS.alpha; // alpha (a in axpy)


    // Address of the current processing block in MRAM
    uint32_t base_tasklet = tasklet_id << BLOCK_SIZE_LOG2;
    uint32_t mram_base_addr_X = (uint32_t)DPU_MRAM_HEAP_POINTER;
    uint32_t mram_base_addr_Y = (uint32_t)(DPU_MRAM_HEAP_POINTER + input_size_dpu_bytes_transfer);

    // Initialize a local cache in WRAM to store the MRAM block
    T* wram_x = (T*)(((uintptr_t)mem_alloc(BLOCK_SIZE + 8) + 7) & ~0x7); // force 8-bit alignment
    T* wram_y = (T*)(((uintptr_t)mem_alloc(BLOCK_SIZE + 8) + 7) & ~0x7);
    if (!wram_x || !wram_y) {
        printf("error: mem_alloc failed\n");
        exit(1);
    }
    if (((uint32_t)wram_x % 8) != 0 || ((uint32_t)wram_y % 8) != 0) {
        printf("error: WRAM buffer not 8-byte aligned\n");
        exit(1);
    }

    for(unsigned int byte_index = base_tasklet; byte_index < input_size_dpu_bytes; byte_index += BLOCK_SIZE * NR_TASKLETS){

        // initialize local variables
        __mram_ptr T* x_ptr = (__mram_ptr T*)(mram_base_addr_X + byte_index);
        __mram_ptr T* y_ptr = (__mram_ptr T*)(mram_base_addr_Y + byte_index);
        uint32_t mem_access_size = BLOCK_SIZE;

        // Bound checking
        if (byte_index + BLOCK_SIZE > input_size_dpu_bytes) {
            mem_access_size = input_size_dpu_bytes - byte_index;
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
        mram_read(y_ptr, wram_y, mem_access_size);

        // Computer vector addition
        

        // Write cache to current MRAM block
        mram_write(wram_y, y_ptr, mem_access_size);
    }

#if defined(CYCLES) || defined(INSTRUCTIONS)
    result->count += counter_stop(&count); // STOP TIMER
#endif
	
    return 0;
}
