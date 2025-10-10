# MIPS Instruction Cache Filler
# Purpose: Generate a large number of distinct instructions to fill the I-cache

.data
array:  .space 4000         # Reserve some space for loads/stores
msg:    .asciiz "Done!\n"

.text
.globl main

main:
    # Initialize registers
    li   $t0, 0
    li   $t1, 1
    li   $t2, 2
    li   $t3, 3
    li   $t4, 4
    li   $t5, 5
    li   $t6, 6
    li   $t7, 7
    la   $s0, array

# --- Start of massive instruction block ---
# Each block of 10–20 lines is unique and repeated many times to fill cache

block0:
    add  $t0, $t1, $t2
    sub  $t3, $t4, $t5
    and  $t6, $t7, $t0
    or   $t1, $t2, $t3
    sll  $t4, $t5, 2
    srl  $t5, $t6, 3
    addi $t0, $t0, 1
    sw   $t0, 0($s0)
    lw   $t1, 0($s0)
    add  $t2, $t2, $t1

block1:
    addi $s0, $s0, 4
    xor  $t3, $t4, $t5
    nor  $t6, $t7, $t0
    addi $t1, $t1, 2
    sub  $t2, $t3, $t4
    or   $t5, $t6, $t7
    sll  $t0, $t1, 1
    srl  $t2, $t3, 2
    sw   $t4, 0($s0)
    lw   $t5, 0($s0)

# --- Repeat with variation to expand instruction footprint ---

block2:
    add  $t0, $t0, $t1
    add  $t1, $t1, $t2
    add  $t2, $t2, $t3
    add  $t3, $t3, $t4
    add  $t4, $t4, $t5
    add  $t5, $t5, $t6
    add  $t6, $t6, $t7
    add  $t7, $t7, $t0
    addi $s0, $s0, 8
    sw   $t0, 0($s0)

# Continue generating unique blocks...
# You can copy-paste and change register order or immediates to expand further

# --- Repeat N times ---
# (In real testing, you can script-generate 500–1000 such lines)

# Example of a simple loop to keep CPU busy but not reusing the same instructions
loop:
    addi $t0, $t0, 1
    bne  $t0, $t7, loop

# Print completion message (optional)
    li   $v0, 4
    la   $a0, msg
    syscall

    li   $v0, 10       # Exit
    syscall
