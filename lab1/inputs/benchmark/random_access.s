# random_access.s
.data
array: .space 32768          # 32 KB array
index: .word 0, 32, 128, 256, 512, 1024, 2048, 4096, 8192, 0, 128, 256, 512, 1024, 2048, 4096

.text
.globl main
main:
    la   $t0, array
    la   $t1, index
    li   $t2, 16            # number of indices
    li   $t7, 8192          # max valid index (32768 bytes / 4 bytes per word)

loop_rand:
    lw   $t3, 0($t1)        # load index value
    bge  $t3, $t7, skip_access   # skip invalid indices

    sll  $t4, $t3, 2        # multiply by 4
    add  $t5, $t0, $t4      # compute address
    lw   $t6, 0($t5)        # load array[index]
    addi $t6, $t6, 1
    sw   $t6, 0($t5)

skip_access:
    addi $t1, $t1, 4
    addi $t2, $t2, -1
    bgtz $t2, loop_rand

    syscall
