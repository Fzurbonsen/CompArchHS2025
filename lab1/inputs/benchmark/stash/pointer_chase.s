# compiled with https://godbolt.org, https://stackoverflow.com/a/63386888
# Step 1 compile C to ASM: mips gcc 15.2.0 with flags -xc -O3 -march=mips32 -Wall -fverbose-asm -fno-delayed-branch
# Step 2 modify assembly: 1: add .text with j main, 2. replace j $31 with syscall
# Step 3 Assemble to Hex machine code using MARS simulator

.data
nodes_0: .space 40000     # reserve some space for nodes

.text
.globl main
main:
        addiu   $sp,$sp,-16
        la      $3, nodes_0      # load base address of array
        li      $8,558891008     # 0x21500000
        li      $2,1237
        sw      $0,8($sp)
        li      $5,9896
        ori     $8,$8,0xccd7
        li      $10,15737
        li      $9,1237

$L2:
        addiu   $4,$2,1237
        mult    $4,$8
        addu    $6,$3,$5
        mfhi    $5
        sra     $7,$4,31
        sw      $2,0($6)
        sra     $5,$5,11
        subu    $2,$5,$7
        mul     $5,$2,$10
        subu     $2,$4,$5
        sll     $5,$2,3
        addu    $4,$3,$5
        sw      $4,4($6)
        bne     $2,$9,$L2
        nop

        li      $4,1000
$L3:
        lw      $2,8($sp)
        lw      $5,0($3)
        addiu   $4,$4,-1
        addu    $2,$2,$5
        lw      $3,4($3)
        sw      $2,8($sp)
        bne     $4,$0,$L3
        nop

        addiu   $sp,$sp,16
        li $v0, 10
        syscall
