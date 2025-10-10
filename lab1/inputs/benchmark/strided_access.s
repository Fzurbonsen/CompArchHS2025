# compiled with https://godbolt.org, https://stackoverflow.com/a/63386888
# Step 1 compile C to ASM: mips gcc 15.2.0 with flags -xc -O3 -march=mips32 -Wall -fverbose-asm -fno-delayed-branch
# Step 2 modify assembly: 1: add .text with j main, 2. replace j $31 with syscall
# Step 3 Assemble to Hex machine code using MARS simulator

.text
	j main
main:
        li      $3,262144             # 0x40000        #,
        ori     $3,$3,0x10         #,,
        subu    $sp,$sp,$3       #,,
        li      $2,262144             # 0x40000        # tmp217,
        addiu   $3,$sp,8       # tmp241,,
        addu    $2,$3,$2         # tmp218, tmp241, tmp217
        li      $4,65536                    # 0x10000        # tmp219,
        sw      $0,0($2)     #, sum
        move    $2,$0    # i,
$L2:
        sw      $2,0($3)     # i, MEM[(int *)_57]
        addiu   $2,$2,1        # i, i,
        addiu   $3,$3,4        # ivtmp.36, ivtmp.36,
        bne     $2,$4,$L2
        nop
        li      $4,262144             # 0x40000        # tmp227,
        addiu   $2,$sp,8       # tmp243,,
        li      $6,16                 # 0x10   # ivtmp_29,
        addu    $4,$2,$4         # _16, tmp243, tmp227
$L3:
        addiu   $2,$sp,8       # tmp244,,
$L7:
        lw      $3,0($4)             # sum.0_5, sum
        lw      $5,0($2)             # MEM[(int *)_35], MEM[(int *)_35]
        addiu   $2,$2,4        # ivtmp.13, ivtmp.13,
        addu    $3,$3,$5         # _10, sum.0_5, MEM[(int *)_35]
        sw      $3,0($4)     # _10, sum
        bne     $4,$2,$L7
        nop
        addiu   $6,$6,-1       # ivtmp_29, ivtmp_29,
        bne     $6,$0,$L3
        nop
        li      $5,262144             # 0x40000        # tmp220,
        addiu   $2,$sp,8       # tmp245,,
        li      $11,7                 # 0x7    # ivtmp_26,
        li      $7,2                        # 0x2    # stride,
        addu    $5,$2,$5         # tmp221, tmp245, tmp220
        li      $9,65536                    # 0x10000        # tmp226,
$L8:
        sll     $8,$7,2    # _51, stride,
        li      $10,16                  # 0x10   # ivtmp_23,
$L5:
        addiu   $4,$sp,8       # tmp246,,
        move    $3,$0    # i,
$L4:
        lw      $6,0($4)             # MEM[(int *)_53], MEM[(int *)_53]
        lw      $2,0($5)             # sum.0_2, sum
        addu    $3,$3,$7         # i, i, stride
        addu    $2,$2,$6         # _3, sum.0_2, MEM[(int *)_53]
        slt     $6,$3,$9   # tmp225, i, tmp226
        sw      $2,0($5)     # _3, sum
        addu    $4,$4,$8         # ivtmp.22, ivtmp.22, _51
        bne     $6,$0,$L4
        nop
        addiu   $10,$10,-1     # ivtmp_23, ivtmp_23,
        bne     $10,$0,$L5
        nop
        addiu   $11,$11,-1     # ivtmp_26, ivtmp_26,
        sll     $7,$7,1    # stride, stride,
        bne     $11,$0,$L8
        nop
        li      $8,262144             # 0x40000        #,
        ori     $8,$8,0x10         #,,
        move    $2,$0    #,
        addu    $sp,$sp,$8       #,,
li $v0, 10
syscall