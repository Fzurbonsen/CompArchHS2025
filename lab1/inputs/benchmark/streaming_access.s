# sequential_access.s
# Access a large array sequentially (A[i] = A[i] + 1)
.data
array: .space 4096        # 4 KB array (1024 words)

.text
.globl main
main:
    la   $t0, array       # base address
    li   $t1, 1024        # number of elements
    li   $t2, 0           # loop counter

loop_seq:
    lw   $t3, 0($t0)      # load array[i]
    addi $t3, $t3, 1      # increment
    sw   $t3, 0($t0)      # store back
    addi $t0, $t0, 4      # move to next word
    addi $t2, $t2, 1
    blt  $t2, $t1, loop_seq

# --- Exit program ---
li   $v0, 10    # syscall 10 = exit
syscall
