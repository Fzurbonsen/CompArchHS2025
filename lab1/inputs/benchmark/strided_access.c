/*
 * strided_access.c:
 * Implementation of a strided access memory access pattern.
 * Author: Frederic zur Bonsen
 * E-Mail: fzurbonsen@ethz.ch
*/


#include <stdio.h>
#include <stdint.h>

#define ARRAY_SIZE 64*1024
#define MAX_STRIDE 128
#define NUM_ITERATIONS 16

int main() {
    volatile int32_t sum = 0;
    int32_t array[ARRAY_SIZE];
    
    // initialize array
    for (int32_t i = 0; i < ARRAY_SIZE; ++i) {
        array[i] = i;
    }

    // test different strides
    for (int32_t stride = 1; stride <= MAX_STRIDE; stride *= 2) {

        // iterate for NUM_ITERATION times
        for (int32_t n = 0; n < NUM_ITERATIONS; ++n) {

            // perform the strided access
            for (int32_t i = 0; i < ARRAY_SIZE; i += stride) {
                sum += array[i];
            }
        }
    }

    return 0;
}