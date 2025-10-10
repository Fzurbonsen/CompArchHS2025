/*
 * levenshtein.c
 * Implementation of levenshtein to test cache behaviour.
 * Author: Frederic zur Bonsen
 * E-Mail: fzurbonsen@ethz.ch
*/


#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// function to find the minimum of three integers
int32_t min(int32_t a, int32_t b, int32_t c) {
    if (a < b) return (a < c) ? a : c;
    return (b < c) ? b : c;
}

int main() {
    const char* seq1 = "TAATTTACTTTTGCTACATTTTATACCATAAGAAAAAGCAAGTCCATTGGAATCCCTCAGACAAAACAGTCAACAAAAATTTCAAACTCTACAGGGAAAT";
    const char* seq2 = "CCCTGGATTATTCACCAAAGGTCTCTGCCTACCTATAAGGTGGCTTGGGAGGAAGTATCTGCAGCTAATGCCTTCTAAACAAACATTTTCTGCCTTTTGT";

    return 0;
}