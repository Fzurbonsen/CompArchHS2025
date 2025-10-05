# random_access.s
.data
array: .space 32768
index: .word 0,32,128,256,512,1024,2048,4096,8192,0,128,256,512,1024,2048,4096

.text
.globl main
main:
    la $t0, array
    la $t1, index
    li $t2, 16
    li $t7, 8192

loop_rand:
    lw $t3, 0($t1)
    bge $t3, $t7, skip_access
    sll $t4, $t3, 2
    add $t5, $t0, $t4
    lw $t6, 0($t5)
    addi $t6, $t6, 1
    sw $t6, 0($t5)

skip_access:
    addi $t1, $t1, 4
    addi $t2, $t2, -1
    bgtz $t2, loop_rand

# exit program
li $v0, 10
syscall
