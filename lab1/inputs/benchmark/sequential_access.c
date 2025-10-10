/*
 * seqeuntial_access.c:
 * Implementation of a sequential access memory access pattern.
 * Author: Frederic zur Bonsen
 * E-Mail: fzurbonsen@ethz.ch
*/

#include <stdio.h>
#include <stdint.h>

#define ARRAY_SIZE 64*1024 // 64K size array
#define MAX_SEQ_LEN 128


int main() {
    volatile int32_t sum = 0;
    int32_t array[ARRAY_SIZE];

    // initialize array
    for (int32_t i = 0; i < ARRAY_SIZE; ++i) {
        array[i] = i;
    }

    // test for different sequence lengths
    for (int32_t seq_len = 1; seq_len < MAX_SEQ_LEN; ++seq_len) {

        // sequentially access different continuous stretches of memory
        for (int32_t i = 0; i < ARRAY_SIZE; ++i) {
            for (int32_t j = i; j < ARRAY_SIZE && j < seq_len; ++j) {
                sum += array[j];
            }
        }
    }

    return 0;
}