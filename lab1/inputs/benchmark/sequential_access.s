# compiled with https://godbolt.org, https://stackoverflow.com/a/63386888
# Step 1 compile C to ASM: mips gcc 15.2.0 with flags -xc -O3 -march=mips32 -Wall -fverbose-asm -fno-delayed-branch
# Step 2 modify assembly: 1: add .text with j main, 2. replace j $31 with syscall
# Step 3: Assemble to Hex machine code using MARS simulator

.text
	j main
main:
        li      $3,262144             # 0x40000        #,
        ori     $3,$3,0x10         #,,
        subu    $sp,$sp,$3       #,,
        li      $2,262144             # 0x40000        # tmp208,
        addiu   $3,$sp,8       # tmp226,,
        addu    $2,$3,$2         # tmp209, tmp226, tmp208
        li      $4,65536                    # 0x10000        # tmp210,
        sw      $0,0($2)     #, sum
        move    $2,$0    # i,
$L2:
        sw      $2,0($3)     # i, MEM[(int *)_45]
        addiu   $2,$2,1        # i, i,
        addiu   $3,$3,4        # ivtmp.27, ivtmp.27,
        bne     $2,$4,$L2
        nop
        li      $5,262144             # 0x40000        # tmp211,
        addiu   $2,$sp,8       # tmp228,,
        li      $7,1                        # 0x1    # seq_len,
        addu    $5,$2,$5         # tmp212, tmp228, tmp211
        li      $10,128           # 0x80   # tmp224,
$L3:
        addiu   $9,$sp,8       # tmp229,,
        move    $8,$0    # i,
$L5:
        move    $4,$9    # ivtmp.11, ivtmp.15
        move    $3,$8    # j, i
$L4:
        lw      $6,0($4)             # MEM[(int *)_6], MEM[(int *)_6]
        lw      $2,0($5)             # sum.0_2, sum
        addiu   $3,$3,1        # j, j,
        addu    $2,$2,$6         # _3, sum.0_2, MEM[(int *)_6]
        slt     $6,$3,$7   # tmp216, j, seq_len
        sw      $2,0($5)     # _3, sum
        addiu   $4,$4,4        # ivtmp.11, ivtmp.11,
        bne     $6,$0,$L4
        nop
        addiu   $8,$8,1        # i, i,
        slt     $2,$8,$7   # tmp217, i, seq_len
        addiu   $9,$9,4        # ivtmp.15, ivtmp.15,
        bne     $2,$0,$L5
        nop
        addiu   $7,$7,1        # seq_len, seq_len,
        bne     $7,$10,$L3
        nop
        li      $8,262144             # 0x40000        #,
        ori     $8,$8,0x10         #,,
        move    $2,$0    #,
        addu    $sp,$sp,$8       #,,
li $v0, 10
syscall