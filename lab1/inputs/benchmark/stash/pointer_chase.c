/*
 * pointer_chase.c:
 * Implementation of a pointer_chase memory access pattern.
 * Author: Frederic zur Bonsen
 * E-Mail: fzurbonsen@ethz.ch
*/


#include <stdio.h>
#include <stdint.h>

#define NUM_NODES 15737 // this is a prime
#define START_INDEX 1237 // prime < NUM_NODES
#define CHASE_LENGTH 1000

typedef struct Node {
    int32_t value;
    struct Node *next;
} Node;

int main() {
    volatile int32_t sum = 0;
    static Node nodes[NUM_NODES];
    int32_t index = START_INDEX;
    int32_t counter = 0;
    

    // initialize the linked list
    while(1) {
        nodes[index].value = index;
        int32_t new_index = (index+START_INDEX) % NUM_NODES;
        nodes[index].next = &nodes[new_index];
        index = new_index;
        counter++;
        if (index == START_INDEX) break;
    }

    // pointer-chase loop
    Node *node = &nodes[0];
    for (int32_t i = 0; i < CHASE_LENGTH; ++i) {
        sum += node->value;
        node = node->next;
    }

    return 0;
}