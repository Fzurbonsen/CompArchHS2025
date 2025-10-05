# strided_access.s
.data
array: .space 16384        # 16 KB array

.text
.globl main
main:
    la   $t0, array
    li   $t1, 1024         # number of iterations
    li   $t2, 64           # stride in bytes (adjust to test conflicts)
    li   $t3, 0            # loop counter

loop_stride:
    lw   $t4, 0($t0)
    addi $t4, $t4, 1
    sw   $t4, 0($t0)
    add   $t0, $t0, $t2    # jump ahead by stride
    addi  $t3, $t3, 1
    blt   $t3, $t1, loop_stride

# --- Exit program ---
li   $v0, 10     # syscall 10 = exit
syscall
