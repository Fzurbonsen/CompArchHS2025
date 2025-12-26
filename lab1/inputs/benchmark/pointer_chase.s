# compiled with https://godbolt.org, https://stackoverflow.com/a/63386888
# Step 1 compile C to ASM: mips gcc 15.2.0 with flags -xc -O3 -march=mips32 -Wall -fverbose-asm -fno-delayed-branch
# Step 2 modify assembly: 1: add .text with j main, 2. replace j $31 with syscall
# Step 3 Assemble to Hex machine code using MARS simulator

.text
        j main

main:
        li      $3,1048576              # 0x100000       #,
        ori     $3,$3,0x10         #,,
        subu    $sp,$sp,$3       #,,
        li      $8,65535                    # 0xffff         # tmp230,
        addiu   $7,$sp,8       # tmp251,,
        sll     $8,$8,15   # tmp229, tmp230,
        li      $9,1048576              # 0x100000       # tmp219,
        move    $4,$7    # ivtmp.17, tmp251
        addu    $9,$7,$9         # _58, tmp251, tmp219
        li      $2,1337           # 0x539  # random_seed,
        li      $5,48271                    # 0xbc8f         # tmp221,
        addiu   $10,$8,32767   # tmp232, tmp229,
$L2:
        srl     $3,$2,15   # _2, random_seed,
        mul     $3,$3,$5   # high, _2, tmp221
        andi    $2,$2,0x7fff     # _1, random_seed,
        mul     $11,$2,$5  # tmp255, _1, tmp221
        addiu   $4,$4,2        # ivtmp.17, ivtmp.17,
        srl     $6,$3,16   # _6, high,
        sll     $3,$3,15   # _3, high,
        and     $3,$3,$8   # _4, _3, tmp229
        addu    $2,$11,$6        # _47, tmp255, _6
        addu    $2,$2,$3         # x, _47, _4
        and     $3,$2,$10  # _7, x, tmp232
        srl     $2,$2,31   # _8, x,
        addu    $2,$3,$2         # random_seed, _7, _8
        sh      $2,-2($4)    # random_seed, MEM[(short unsigned int *)_43]
        bne     $4,$9,$L2
        nop
        li      $6,1048576              # 0x100000       # tmp238,
        addu    $6,$7,$6         # tmp239, tmp251, tmp238
        li      $4,65536                    # 0x10000        # tmp218,
        lhu     $5,8($sp)  # curr, nodes[0]
        sw      $0,0($6)     #, sum
        ori     $4,$4,0x86a0       # ivtmp_61, tmp218,
$L3:
        lw      $2,0($6)             # sum.1_11, sum
        sll     $3,$5,1    # tmp244, curr,
        addu    $3,$7,$3         # tmp245, tmp251, tmp244
        addu    $2,$2,$5         # _12, sum.1_11, curr
        addiu   $4,$4,-1       # ivtmp_61, ivtmp_61,
        lhu     $5,0($3)   # curr, nodes[curr_42]
        sw      $2,0($6)     # _12, sum
        bne     $4,$0,$L3
        nop
        li      $8,1048576              # 0x100000       #,
        ori     $8,$8,0x10         #,,
        move    $2,$0    #,
        addu    $sp,$sp,$8       #,,
li $v0, 10
syscall