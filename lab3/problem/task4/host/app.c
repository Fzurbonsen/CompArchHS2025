/**
* app.c
* Host Application Source File
*
*/
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <dpu.h>
#include <dpu_log.h>
#include <unistd.h>
#include <getopt.h>
#include <assert.h>

#include "../support/common.h"
#include "../support/timer.h"
#include "../support/params.h"

#define DEBUG
#ifdef DEBUG
static bool debug_check = true;
#endif // DEBUG

// Define the DPU Binary path as DPU_BINARY here
#ifndef DPU_BINARY
#define DPU_BINARY "./bin/dpu_code"
#endif

// Pointer declaration
static T* X;
static T* Y; // return value
static T* X_host;
static T* Y_host; // return value

// Create input arrays
static void read_input(T* A, unsigned int nr_elements) {
    srand(0);
    printf("nr_elements\t%u\n", nr_elements);
    for (unsigned int i = 0; i < nr_elements; i++) {
        A[i] = (T) (rand());
        A[i] = (T) 1;
    }
}

// compute output in the host for verification purposes
static void vec_red_host(T* A, unsigned int nr_elements) {
    for (unsigned int i = 1; i < nr_elements; ++i) {
        A[0] += A[i];
    }
}

// Main of the Host Application
int main(int argc, char **argv) {

    // Input parameters
    struct Params p = input_params(argc, argv);

    // Timer declaration
    Timer timer;
#if defined(CYCLES) || defined(INSTRUCTIONS)
    double cc = 0;
    double cc_min = 0;
#endif
	
    // Allocate DPUs
    struct dpu_set_t dpu_set, dpu;
    uint32_t nr_of_dpus;
    DPU_ASSERT(dpu_alloc(NR_DPUS, NULL, &dpu_set));
    DPU_ASSERT(dpu_get_nr_dpus(dpu_set, &nr_of_dpus)); // Number of DPUs in the DPU set
    printf("Allocated %d DPU(s)\t", nr_of_dpus);
    printf("NR_TASKLETS\t%d\tBLOCK\t%d\n", NR_TASKLETS, BLOCK);

    // Load binary
    DPU_ASSERT(dpu_load(dpu_set, DPU_BINARY, NULL));

    // Input size 
    const unsigned int input_size = p.input_size; // Total input size 
    const unsigned int input_size_8bytes = 
        ((input_size * sizeof(T)) % 8) != 0 ? roundup(input_size, 8) : input_size; // Total input size, 8-byte aligned
    const unsigned int input_size_dpu = divceil(input_size, nr_of_dpus); // Input size per DPU (max.)
    const unsigned int input_size_dpu_8bytes = 
        ((input_size_dpu * sizeof(T)) % 8) != 0 ? roundup(input_size_dpu, 8) : input_size_dpu; // Input size per DPU (max.), 8-byte aligned

    // Input/output allocation in host main memory
    X = malloc(input_size_dpu_8bytes * nr_of_dpus * sizeof(T));
    Y = malloc(nr_of_dpus * sizeof(T));
    X_host = malloc(input_size_dpu_8bytes * nr_of_dpus * sizeof(T));
    Y_host = malloc(nr_of_dpus * sizeof(T));
    unsigned int i = 0;

    // Create an input file with arbitrary data
    read_input(X, input_size);
    memcpy(X_host, X, input_size_dpu_8bytes * nr_of_dpus * sizeof(T));

    // Loop over main kernel
    for(int rep = 0; rep < p.n_warmup + p.n_reps; rep++) {

        // Compute output on CPU (verification purposes)
        if(rep >= p.n_warmup)
            start(&timer, 0, rep - p.n_warmup);
            vec_red_host(X_host, input_size);
            Y_host[0] = X_host[0]; // store the result in the first entra of the output vector (which is empty otherwise)
        if(rep >= p.n_warmup)
            stop(&timer, 0);

        printf("Load input data\n");
        // Input arguments
        unsigned int kernel = 0;
        dpu_arguments_t input_arguments[NR_DPUS];
        for(i=0; i<nr_of_dpus-1; i++) {
            input_arguments[i].size=input_size_dpu_8bytes * sizeof(T); 
            input_arguments[i].transfer_size=input_size_dpu_8bytes * sizeof(T); 
            input_arguments[i].kernel=kernel;
        }
        input_arguments[nr_of_dpus-1].size=(input_size_8bytes - input_size_dpu_8bytes * (NR_DPUS-1)) * sizeof(T); 
        input_arguments[nr_of_dpus-1].transfer_size=input_size_dpu_8bytes * sizeof(T); 
        input_arguments[nr_of_dpus-1].kernel=kernel;

        if(rep >= p.n_warmup)
            start(&timer, 1, rep - p.n_warmup); // Start timer (CPU-DPU transfers)
        i = 0;
		// Copy input arguments
        // Parallel transfers
        DPU_FOREACH(dpu_set, dpu, i) {
            DPU_ASSERT(dpu_prepare_xfer(dpu, &input_arguments[i]));
        }
        DPU_ASSERT(dpu_push_xfer(dpu_set,
                                DPU_XFER_TO_DPU, 
                                "DPU_INPUT_ARGUMENTS", 
                                0, 
                                sizeof(input_arguments[0]), 
                                DPU_XFER_DEFAULT));

        
# ifdef DEBUG
        // compaer arrays before pushing to the dpus
        fprintf(stderr, "\n");
        for (unsigned int j = 0; j < input_size; ++j) {
            if (X_host[i] != X[i]) {
                debug_check = false;
            }
        }
        if (!debug_check) {
            fprintf(stderr, "[host]error: arrays are unequal before pushing to the DPUs!\n");
            for (unsigned int j = 0; j < input_size; ++j) {
                if (X_host[i] != X[i]) {
                    fprintf(stderr, "%i: %i -- %i\n", j, X_host[j], X[j]);
                }
            }
            exit(1);
        }
#endif // DEBUG

        // Copy input arrays
#ifdef SERIAL // Serial transfers

        // prepare the buffers to push X to the DPUs
        i = 0;
        DPU_FOREACH(dpu_set, dpu, i) {
            DPU_ASSERT(dpu_prepare_xfer(dpu, &X[i * input_size_dpu_8bytes]));
        }
        // push the buffers to the DPUs
        DPU_ASSERT(dpu_push_xfer(dpu_set, 
                                DPU_XFER_TO_DPU, 
                                DPU_MRAM_HEAP_POINTER_NAME, 
                                0, // offset to hold return value
                                input_size_dpu_8bytes * sizeof(T), 
                                DPU_XFER_DEFAULT));

#else // Parallel transfers

        // prepare the buffers to push X to the DPUs
        i = 0;
        DPU_FOREACH(dpu_set, dpu, i) {
            DPU_ASSERT(dpu_prepare_xfer(dpu, &X[i * input_size_dpu_8bytes]));
        }
        // push the buffers to the DPUs
        DPU_ASSERT(dpu_push_xfer(dpu_set, 
                                DPU_XFER_TO_DPU, 
                                DPU_MRAM_HEAP_POINTER_NAME, 
                                0, // offset to hold return value
                                input_size_dpu_8bytes * sizeof(T), 
                                DPU_XFER_ASYNC));
        DPU_ASSERT(dpu_sync(dpu_set));

#endif

# ifdef DEBUG
        // compaer arrays after pushing to the dpus
        fprintf(stderr, "\n");
        for (unsigned int j = 0; j < input_size; ++j) {
            if (X_host[i] != X[i]) {
                debug_check = false;
            }
        }
        if (!debug_check) {
            fprintf(stderr, "[host]error: arrays are unequal after pushing to the DPUs!\n");
            for (unsigned int j = 0; j < input_size; ++j) {
                if (X_host[i] != X[i]) {
                    fprintf(stderr, "%i: %i -- %i\n", j, X_host[j], X[j]);
                }
            }
            exit(1);
        }
#endif // DEBUG

        if(rep >= p.n_warmup)
            stop(&timer, 1); // Stop timer (CPU-DPU transfers)
		
        printf("Run program on DPU(s) \n");
        // Run DPU kernel
        if(rep >= p.n_warmup) {
            start(&timer, 2, rep - p.n_warmup); // Start timer (DPU kernel)
        }
        DPU_ASSERT(dpu_launch(dpu_set, DPU_SYNCHRONOUS));
        if(rep >= p.n_warmup) {
            stop(&timer, 2); // Stop timer (DPU kernel)
        }

#if PRINT
        {
            unsigned int each_dpu = 0;
            printf("Display DPU Logs\n");
            DPU_FOREACH (dpu_set, dpu) {
                printf("DPU#%d:\n", each_dpu);
                DPU_ASSERT(dpulog_read_for_dpu(dpu.dpu, stdout));
                each_dpu++;
            }
        }
#endif

        printf("Retrieve results\n");
        if(rep >= p.n_warmup)
            start(&timer, 3, rep - p.n_warmup); // Start timer (DPU-CPU transfers)
        i = 0;
        // Copy output array
#ifdef SERIAL // Serial transfers

        // prepare the buffers to recieve Y from the DPUs
        i = 0;
        DPU_FOREACH(dpu_set, dpu, i) {
            // DPU_ASSERT(dpu_log_read(dpu, stderr));
            DPU_ASSERT(dpu_prepare_xfer(dpu, &X[i * input_size_dpu_8bytes]));
        }
        // push the buffers to the DPUs
        DPU_ASSERT(dpu_push_xfer(dpu_set,
                                DPU_XFER_FROM_DPU,
                                DPU_MRAM_HEAP_POINTER_NAME,
                                0,
                                sizeof(T),
                                DPU_XFER_DEFAULT));

#else // Parallel transfers

        // prepare the buffers to recieve Y from the DPUs
        i = 0;
        DPU_FOREACH(dpu_set, dpu, i) {
            DPU_ASSERT(dpu_log_read(dpu, stderr));
            DPU_ASSERT(dpu_prepare_xfer(dpu, &Y[i * 8]));
            // DPU_ASSERT(dpu_prepare_xfer(dpu, &X[i * 8]));
        }
        // push the buffers to the DPUs
        DPU_ASSERT(dpu_push_xfer(dpu_set,
                                DPU_XFER_FROM_DPU,
                                DPU_MRAM_HEAP_POINTER_NAME,
                                0,
                                8,
                                DPU_XFER_ASYNC));
        DPU_ASSERT(dpu_sync(dpu_set));

#endif
        if(rep >= p.n_warmup)
            stop(&timer, 3); // Stop timer (DPU-CPU transfers)

        // build the overall sum from the retrived data
        for (i = 1; i < nr_of_dpus; ++i) {
            Y[0] += Y[i];
        }

#if defined(CYCLES) || defined(INSTRUCTIONS)
        dpu_results_t results[nr_of_dpus];
        // Parallel transfers
        dpu_results_t* results_retrieve[nr_of_dpus];
        DPU_FOREACH(dpu_set, dpu, i) {
            results_retrieve[i] = (dpu_results_t*)malloc(NR_TASKLETS * sizeof(dpu_results_t));
            DPU_ASSERT(dpu_prepare_xfer(dpu, results_retrieve[i]));
        }
        DPU_ASSERT(dpu_push_xfer(dpu_set, DPU_XFER_FROM_DPU, "DPU_RESULTS", 0, NR_TASKLETS * sizeof(dpu_results_t), DPU_XFER_DEFAULT));
        DPU_FOREACH(dpu_set, dpu, i) {
            results[i].count = 0;
            // Retrieve tasklet count
            for (unsigned int each_tasklet = 0; each_tasklet < NR_TASKLETS; each_tasklet++) {
                if (results_retrieve[i][each_tasklet].count > results[i].count)
                    results[i].count = results_retrieve[i][each_tasklet].count;
            }
            free(results_retrieve[i]);
        }

        uint64_t max_count = 0;
        uint64_t min_count = 0xFFFFFFFFFFFFFFFF;
        // Print performance results
        if(rep >= p.n_warmup){
            i = 0;
            DPU_FOREACH(dpu_set, dpu) {
                if(results[i].count > max_count)
                    max_count = results[i].count;
                if(results[i].count < min_count)
                    min_count = results[i].count;
                i++;
            }
            cc += (double)max_count;
            cc_min += (double)min_count;
        }
#endif
    }
#ifdef CYCLES
    printf("DPU cycles  = %g\n", cc / p.n_reps);
#elif defined(INSTRUCTIONS)
    printf("DPU instructions  = %g\n", cc / p.n_reps);
#endif
	
    // Print timing results
    printf("CPU ");
    print(&timer, 0, p.n_reps);
    printf("CPU-DPU ");
    print(&timer, 1, p.n_reps);
    printf("DPU Kernel ");
    print(&timer, 2, p.n_reps);
    printf("DPU-CPU ");
    print(&timer, 3, p.n_reps);

    // Check output
    bool status = true;
    printf("\n");
    if(Y_host[0] != Y[0]){ 
        status = false;
        printf("%d: %u -- %u\n", 0, Y_host[0], Y[0]);
    }
    // for (i = 0; i < input_size; i++) {
    //     if(X_host[0] != X[0]){ 
    //         status = false;
    //         printf("%d: %u -- %u\n", i, X_host[i], X[i]);
    //     }
    // }
    if (status) {
        printf("[" ANSI_COLOR_GREEN "OK" ANSI_COLOR_RESET "] Outputs are equal\n");
    } else {
        printf("[" ANSI_COLOR_RED "ERROR" ANSI_COLOR_RESET "] Outputs differ!\n");
    }

    // Deallocation
    free(X);
    free(X_host);
    DPU_ASSERT(dpu_free(dpu_set)); // Deallocate DPUs
	
    return status ? 0 : -1;
}
