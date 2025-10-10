.data
array: .space 4000
.text
.globl main
main:
la $s0, array
# --- block 0 ---
addi $t0, $t0, 0
addi $t1, $t1, 1
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 0($s0)
lw   $t6, 0($s0)

# --- block 1 ---
addi $t0, $t0, 1
addi $t1, $t1, 2
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 4($s0)
lw   $t6, 4($s0)

# --- block 2 ---
addi $t0, $t0, 2
addi $t1, $t1, 3
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 8($s0)
lw   $t6, 8($s0)

# --- block 3 ---
addi $t0, $t0, 3
addi $t1, $t1, 4
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 12($s0)
lw   $t6, 12($s0)

# --- block 4 ---
addi $t0, $t0, 4
addi $t1, $t1, 5
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 16($s0)
lw   $t6, 16($s0)

# --- block 5 ---
addi $t0, $t0, 5
addi $t1, $t1, 6
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 20($s0)
lw   $t6, 20($s0)

# --- block 6 ---
addi $t0, $t0, 6
addi $t1, $t1, 7
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 24($s0)
lw   $t6, 24($s0)

# --- block 7 ---
addi $t0, $t0, 7
addi $t1, $t1, 8
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 28($s0)
lw   $t6, 28($s0)

# --- block 8 ---
addi $t0, $t0, 8
addi $t1, $t1, 9
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 32($s0)
lw   $t6, 32($s0)

# --- block 9 ---
addi $t0, $t0, 9
addi $t1, $t1, 10
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 36($s0)
lw   $t6, 36($s0)

# --- block 10 ---
addi $t0, $t0, 10
addi $t1, $t1, 11
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 40($s0)
lw   $t6, 40($s0)

# --- block 11 ---
addi $t0, $t0, 11
addi $t1, $t1, 12
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 44($s0)
lw   $t6, 44($s0)

# --- block 12 ---
addi $t0, $t0, 12
addi $t1, $t1, 13
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 48($s0)
lw   $t6, 48($s0)

# --- block 13 ---
addi $t0, $t0, 13
addi $t1, $t1, 14
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 52($s0)
lw   $t6, 52($s0)

# --- block 14 ---
addi $t0, $t0, 14
addi $t1, $t1, 15
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 56($s0)
lw   $t6, 56($s0)

# --- block 15 ---
addi $t0, $t0, 15
addi $t1, $t1, 16
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 60($s0)
lw   $t6, 60($s0)

# --- block 16 ---
addi $t0, $t0, 16
addi $t1, $t1, 17
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 64($s0)
lw   $t6, 64($s0)

# --- block 17 ---
addi $t0, $t0, 17
addi $t1, $t1, 18
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 68($s0)
lw   $t6, 68($s0)

# --- block 18 ---
addi $t0, $t0, 18
addi $t1, $t1, 19
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 72($s0)
lw   $t6, 72($s0)

# --- block 19 ---
addi $t0, $t0, 19
addi $t1, $t1, 20
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 76($s0)
lw   $t6, 76($s0)

# --- block 20 ---
addi $t0, $t0, 20
addi $t1, $t1, 21
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 80($s0)
lw   $t6, 80($s0)

# --- block 21 ---
addi $t0, $t0, 21
addi $t1, $t1, 22
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 84($s0)
lw   $t6, 84($s0)

# --- block 22 ---
addi $t0, $t0, 22
addi $t1, $t1, 23
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 88($s0)
lw   $t6, 88($s0)

# --- block 23 ---
addi $t0, $t0, 23
addi $t1, $t1, 24
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 92($s0)
lw   $t6, 92($s0)

# --- block 24 ---
addi $t0, $t0, 24
addi $t1, $t1, 25
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 96($s0)
lw   $t6, 96($s0)

# --- block 25 ---
addi $t0, $t0, 25
addi $t1, $t1, 26
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 100($s0)
lw   $t6, 100($s0)

# --- block 26 ---
addi $t0, $t0, 26
addi $t1, $t1, 27
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 104($s0)
lw   $t6, 104($s0)

# --- block 27 ---
addi $t0, $t0, 27
addi $t1, $t1, 28
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 108($s0)
lw   $t6, 108($s0)

# --- block 28 ---
addi $t0, $t0, 28
addi $t1, $t1, 29
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 112($s0)
lw   $t6, 112($s0)

# --- block 29 ---
addi $t0, $t0, 29
addi $t1, $t1, 30
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 116($s0)
lw   $t6, 116($s0)

# --- block 30 ---
addi $t0, $t0, 30
addi $t1, $t1, 31
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 120($s0)
lw   $t6, 120($s0)

# --- block 31 ---
addi $t0, $t0, 31
addi $t1, $t1, 32
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 124($s0)
lw   $t6, 124($s0)

# --- block 32 ---
addi $t0, $t0, 32
addi $t1, $t1, 33
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 128($s0)
lw   $t6, 128($s0)

# --- block 33 ---
addi $t0, $t0, 33
addi $t1, $t1, 34
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 132($s0)
lw   $t6, 132($s0)

# --- block 34 ---
addi $t0, $t0, 34
addi $t1, $t1, 35
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 136($s0)
lw   $t6, 136($s0)

# --- block 35 ---
addi $t0, $t0, 35
addi $t1, $t1, 36
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 140($s0)
lw   $t6, 140($s0)

# --- block 36 ---
addi $t0, $t0, 36
addi $t1, $t1, 37
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 144($s0)
lw   $t6, 144($s0)

# --- block 37 ---
addi $t0, $t0, 37
addi $t1, $t1, 38
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 148($s0)
lw   $t6, 148($s0)

# --- block 38 ---
addi $t0, $t0, 38
addi $t1, $t1, 39
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 152($s0)
lw   $t6, 152($s0)

# --- block 39 ---
addi $t0, $t0, 39
addi $t1, $t1, 40
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 156($s0)
lw   $t6, 156($s0)

# --- block 40 ---
addi $t0, $t0, 40
addi $t1, $t1, 41
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 160($s0)
lw   $t6, 160($s0)

# --- block 41 ---
addi $t0, $t0, 41
addi $t1, $t1, 42
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 164($s0)
lw   $t6, 164($s0)

# --- block 42 ---
addi $t0, $t0, 42
addi $t1, $t1, 43
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 168($s0)
lw   $t6, 168($s0)

# --- block 43 ---
addi $t0, $t0, 43
addi $t1, $t1, 44
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 172($s0)
lw   $t6, 172($s0)

# --- block 44 ---
addi $t0, $t0, 44
addi $t1, $t1, 45
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 176($s0)
lw   $t6, 176($s0)

# --- block 45 ---
addi $t0, $t0, 45
addi $t1, $t1, 46
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 180($s0)
lw   $t6, 180($s0)

# --- block 46 ---
addi $t0, $t0, 46
addi $t1, $t1, 47
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 184($s0)
lw   $t6, 184($s0)

# --- block 47 ---
addi $t0, $t0, 47
addi $t1, $t1, 48
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 188($s0)
lw   $t6, 188($s0)

# --- block 48 ---
addi $t0, $t0, 48
addi $t1, $t1, 49
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 192($s0)
lw   $t6, 192($s0)

# --- block 49 ---
addi $t0, $t0, 49
addi $t1, $t1, 50
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 196($s0)
lw   $t6, 196($s0)

# --- block 50 ---
addi $t0, $t0, 50
addi $t1, $t1, 51
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 200($s0)
lw   $t6, 200($s0)

# --- block 51 ---
addi $t0, $t0, 51
addi $t1, $t1, 52
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 204($s0)
lw   $t6, 204($s0)

# --- block 52 ---
addi $t0, $t0, 52
addi $t1, $t1, 53
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 208($s0)
lw   $t6, 208($s0)

# --- block 53 ---
addi $t0, $t0, 53
addi $t1, $t1, 54
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 212($s0)
lw   $t6, 212($s0)

# --- block 54 ---
addi $t0, $t0, 54
addi $t1, $t1, 55
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 216($s0)
lw   $t6, 216($s0)

# --- block 55 ---
addi $t0, $t0, 55
addi $t1, $t1, 56
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 220($s0)
lw   $t6, 220($s0)

# --- block 56 ---
addi $t0, $t0, 56
addi $t1, $t1, 57
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 224($s0)
lw   $t6, 224($s0)

# --- block 57 ---
addi $t0, $t0, 57
addi $t1, $t1, 58
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 228($s0)
lw   $t6, 228($s0)

# --- block 58 ---
addi $t0, $t0, 58
addi $t1, $t1, 59
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 232($s0)
lw   $t6, 232($s0)

# --- block 59 ---
addi $t0, $t0, 59
addi $t1, $t1, 60
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 236($s0)
lw   $t6, 236($s0)

# --- block 60 ---
addi $t0, $t0, 60
addi $t1, $t1, 61
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 240($s0)
lw   $t6, 240($s0)

# --- block 61 ---
addi $t0, $t0, 61
addi $t1, $t1, 62
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 244($s0)
lw   $t6, 244($s0)

# --- block 62 ---
addi $t0, $t0, 62
addi $t1, $t1, 63
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 248($s0)
lw   $t6, 248($s0)

# --- block 63 ---
addi $t0, $t0, 63
addi $t1, $t1, 64
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 252($s0)
lw   $t6, 252($s0)

# --- block 64 ---
addi $t0, $t0, 64
addi $t1, $t1, 65
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 256($s0)
lw   $t6, 256($s0)

# --- block 65 ---
addi $t0, $t0, 65
addi $t1, $t1, 66
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 260($s0)
lw   $t6, 260($s0)

# --- block 66 ---
addi $t0, $t0, 66
addi $t1, $t1, 67
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 264($s0)
lw   $t6, 264($s0)

# --- block 67 ---
addi $t0, $t0, 67
addi $t1, $t1, 68
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 268($s0)
lw   $t6, 268($s0)

# --- block 68 ---
addi $t0, $t0, 68
addi $t1, $t1, 69
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 272($s0)
lw   $t6, 272($s0)

# --- block 69 ---
addi $t0, $t0, 69
addi $t1, $t1, 70
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 276($s0)
lw   $t6, 276($s0)

# --- block 70 ---
addi $t0, $t0, 70
addi $t1, $t1, 71
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 280($s0)
lw   $t6, 280($s0)

# --- block 71 ---
addi $t0, $t0, 71
addi $t1, $t1, 72
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 284($s0)
lw   $t6, 284($s0)

# --- block 72 ---
addi $t0, $t0, 72
addi $t1, $t1, 73
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 288($s0)
lw   $t6, 288($s0)

# --- block 73 ---
addi $t0, $t0, 73
addi $t1, $t1, 74
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 292($s0)
lw   $t6, 292($s0)

# --- block 74 ---
addi $t0, $t0, 74
addi $t1, $t1, 75
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 296($s0)
lw   $t6, 296($s0)

# --- block 75 ---
addi $t0, $t0, 75
addi $t1, $t1, 76
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 300($s0)
lw   $t6, 300($s0)

# --- block 76 ---
addi $t0, $t0, 76
addi $t1, $t1, 77
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 304($s0)
lw   $t6, 304($s0)

# --- block 77 ---
addi $t0, $t0, 77
addi $t1, $t1, 78
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 308($s0)
lw   $t6, 308($s0)

# --- block 78 ---
addi $t0, $t0, 78
addi $t1, $t1, 79
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 312($s0)
lw   $t6, 312($s0)

# --- block 79 ---
addi $t0, $t0, 79
addi $t1, $t1, 80
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 316($s0)
lw   $t6, 316($s0)

# --- block 80 ---
addi $t0, $t0, 80
addi $t1, $t1, 81
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 320($s0)
lw   $t6, 320($s0)

# --- block 81 ---
addi $t0, $t0, 81
addi $t1, $t1, 82
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 324($s0)
lw   $t6, 324($s0)

# --- block 82 ---
addi $t0, $t0, 82
addi $t1, $t1, 83
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 328($s0)
lw   $t6, 328($s0)

# --- block 83 ---
addi $t0, $t0, 83
addi $t1, $t1, 84
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 332($s0)
lw   $t6, 332($s0)

# --- block 84 ---
addi $t0, $t0, 84
addi $t1, $t1, 85
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 336($s0)
lw   $t6, 336($s0)

# --- block 85 ---
addi $t0, $t0, 85
addi $t1, $t1, 86
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 340($s0)
lw   $t6, 340($s0)

# --- block 86 ---
addi $t0, $t0, 86
addi $t1, $t1, 87
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 344($s0)
lw   $t6, 344($s0)

# --- block 87 ---
addi $t0, $t0, 87
addi $t1, $t1, 88
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 348($s0)
lw   $t6, 348($s0)

# --- block 88 ---
addi $t0, $t0, 88
addi $t1, $t1, 89
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 352($s0)
lw   $t6, 352($s0)

# --- block 89 ---
addi $t0, $t0, 89
addi $t1, $t1, 90
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 356($s0)
lw   $t6, 356($s0)

# --- block 90 ---
addi $t0, $t0, 90
addi $t1, $t1, 91
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 360($s0)
lw   $t6, 360($s0)

# --- block 91 ---
addi $t0, $t0, 91
addi $t1, $t1, 92
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 364($s0)
lw   $t6, 364($s0)

# --- block 92 ---
addi $t0, $t0, 92
addi $t1, $t1, 93
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 368($s0)
lw   $t6, 368($s0)

# --- block 93 ---
addi $t0, $t0, 93
addi $t1, $t1, 94
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 372($s0)
lw   $t6, 372($s0)

# --- block 94 ---
addi $t0, $t0, 94
addi $t1, $t1, 95
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 376($s0)
lw   $t6, 376($s0)

# --- block 95 ---
addi $t0, $t0, 95
addi $t1, $t1, 96
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 380($s0)
lw   $t6, 380($s0)

# --- block 96 ---
addi $t0, $t0, 96
addi $t1, $t1, 97
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 384($s0)
lw   $t6, 384($s0)

# --- block 97 ---
addi $t0, $t0, 97
addi $t1, $t1, 98
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 388($s0)
lw   $t6, 388($s0)

# --- block 98 ---
addi $t0, $t0, 98
addi $t1, $t1, 99
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 392($s0)
lw   $t6, 392($s0)

# --- block 99 ---
addi $t0, $t0, 99
addi $t1, $t1, 100
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 396($s0)
lw   $t6, 396($s0)

# --- block 100 ---
addi $t0, $t0, 100
addi $t1, $t1, 101
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 400($s0)
lw   $t6, 400($s0)

# --- block 101 ---
addi $t0, $t0, 101
addi $t1, $t1, 102
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 404($s0)
lw   $t6, 404($s0)

# --- block 102 ---
addi $t0, $t0, 102
addi $t1, $t1, 103
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 408($s0)
lw   $t6, 408($s0)

# --- block 103 ---
addi $t0, $t0, 103
addi $t1, $t1, 104
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 412($s0)
lw   $t6, 412($s0)

# --- block 104 ---
addi $t0, $t0, 104
addi $t1, $t1, 105
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 416($s0)
lw   $t6, 416($s0)

# --- block 105 ---
addi $t0, $t0, 105
addi $t1, $t1, 106
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 420($s0)
lw   $t6, 420($s0)

# --- block 106 ---
addi $t0, $t0, 106
addi $t1, $t1, 107
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 424($s0)
lw   $t6, 424($s0)

# --- block 107 ---
addi $t0, $t0, 107
addi $t1, $t1, 108
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 428($s0)
lw   $t6, 428($s0)

# --- block 108 ---
addi $t0, $t0, 108
addi $t1, $t1, 109
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 432($s0)
lw   $t6, 432($s0)

# --- block 109 ---
addi $t0, $t0, 109
addi $t1, $t1, 110
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 436($s0)
lw   $t6, 436($s0)

# --- block 110 ---
addi $t0, $t0, 110
addi $t1, $t1, 111
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 440($s0)
lw   $t6, 440($s0)

# --- block 111 ---
addi $t0, $t0, 111
addi $t1, $t1, 112
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 444($s0)
lw   $t6, 444($s0)

# --- block 112 ---
addi $t0, $t0, 112
addi $t1, $t1, 113
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 448($s0)
lw   $t6, 448($s0)

# --- block 113 ---
addi $t0, $t0, 113
addi $t1, $t1, 114
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 452($s0)
lw   $t6, 452($s0)

# --- block 114 ---
addi $t0, $t0, 114
addi $t1, $t1, 115
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 456($s0)
lw   $t6, 456($s0)

# --- block 115 ---
addi $t0, $t0, 115
addi $t1, $t1, 116
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 460($s0)
lw   $t6, 460($s0)

# --- block 116 ---
addi $t0, $t0, 116
addi $t1, $t1, 117
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 464($s0)
lw   $t6, 464($s0)

# --- block 117 ---
addi $t0, $t0, 117
addi $t1, $t1, 118
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 468($s0)
lw   $t6, 468($s0)

# --- block 118 ---
addi $t0, $t0, 118
addi $t1, $t1, 119
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 472($s0)
lw   $t6, 472($s0)

# --- block 119 ---
addi $t0, $t0, 119
addi $t1, $t1, 120
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 476($s0)
lw   $t6, 476($s0)

# --- block 120 ---
addi $t0, $t0, 120
addi $t1, $t1, 121
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 480($s0)
lw   $t6, 480($s0)

# --- block 121 ---
addi $t0, $t0, 121
addi $t1, $t1, 122
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 484($s0)
lw   $t6, 484($s0)

# --- block 122 ---
addi $t0, $t0, 122
addi $t1, $t1, 123
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 488($s0)
lw   $t6, 488($s0)

# --- block 123 ---
addi $t0, $t0, 123
addi $t1, $t1, 124
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 492($s0)
lw   $t6, 492($s0)

# --- block 124 ---
addi $t0, $t0, 124
addi $t1, $t1, 125
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 496($s0)
lw   $t6, 496($s0)

# --- block 125 ---
addi $t0, $t0, 125
addi $t1, $t1, 126
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 500($s0)
lw   $t6, 500($s0)

# --- block 126 ---
addi $t0, $t0, 126
addi $t1, $t1, 127
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 504($s0)
lw   $t6, 504($s0)

# --- block 127 ---
addi $t0, $t0, 127
addi $t1, $t1, 128
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 508($s0)
lw   $t6, 508($s0)

# --- block 128 ---
addi $t0, $t0, 128
addi $t1, $t1, 129
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 512($s0)
lw   $t6, 512($s0)

# --- block 129 ---
addi $t0, $t0, 129
addi $t1, $t1, 130
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 516($s0)
lw   $t6, 516($s0)

# --- block 130 ---
addi $t0, $t0, 130
addi $t1, $t1, 131
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 520($s0)
lw   $t6, 520($s0)

# --- block 131 ---
addi $t0, $t0, 131
addi $t1, $t1, 132
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 524($s0)
lw   $t6, 524($s0)

# --- block 132 ---
addi $t0, $t0, 132
addi $t1, $t1, 133
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 528($s0)
lw   $t6, 528($s0)

# --- block 133 ---
addi $t0, $t0, 133
addi $t1, $t1, 134
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 532($s0)
lw   $t6, 532($s0)

# --- block 134 ---
addi $t0, $t0, 134
addi $t1, $t1, 135
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 536($s0)
lw   $t6, 536($s0)

# --- block 135 ---
addi $t0, $t0, 135
addi $t1, $t1, 136
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 540($s0)
lw   $t6, 540($s0)

# --- block 136 ---
addi $t0, $t0, 136
addi $t1, $t1, 137
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 544($s0)
lw   $t6, 544($s0)

# --- block 137 ---
addi $t0, $t0, 137
addi $t1, $t1, 138
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 548($s0)
lw   $t6, 548($s0)

# --- block 138 ---
addi $t0, $t0, 138
addi $t1, $t1, 139
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 552($s0)
lw   $t6, 552($s0)

# --- block 139 ---
addi $t0, $t0, 139
addi $t1, $t1, 140
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 556($s0)
lw   $t6, 556($s0)

# --- block 140 ---
addi $t0, $t0, 140
addi $t1, $t1, 141
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 560($s0)
lw   $t6, 560($s0)

# --- block 141 ---
addi $t0, $t0, 141
addi $t1, $t1, 142
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 564($s0)
lw   $t6, 564($s0)

# --- block 142 ---
addi $t0, $t0, 142
addi $t1, $t1, 143
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 568($s0)
lw   $t6, 568($s0)

# --- block 143 ---
addi $t0, $t0, 143
addi $t1, $t1, 144
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 572($s0)
lw   $t6, 572($s0)

# --- block 144 ---
addi $t0, $t0, 144
addi $t1, $t1, 145
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 576($s0)
lw   $t6, 576($s0)

# --- block 145 ---
addi $t0, $t0, 145
addi $t1, $t1, 146
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 580($s0)
lw   $t6, 580($s0)

# --- block 146 ---
addi $t0, $t0, 146
addi $t1, $t1, 147
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 584($s0)
lw   $t6, 584($s0)

# --- block 147 ---
addi $t0, $t0, 147
addi $t1, $t1, 148
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 588($s0)
lw   $t6, 588($s0)

# --- block 148 ---
addi $t0, $t0, 148
addi $t1, $t1, 149
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 592($s0)
lw   $t6, 592($s0)

# --- block 149 ---
addi $t0, $t0, 149
addi $t1, $t1, 150
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 596($s0)
lw   $t6, 596($s0)

# --- block 150 ---
addi $t0, $t0, 150
addi $t1, $t1, 151
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 600($s0)
lw   $t6, 600($s0)

# --- block 151 ---
addi $t0, $t0, 151
addi $t1, $t1, 152
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 604($s0)
lw   $t6, 604($s0)

# --- block 152 ---
addi $t0, $t0, 152
addi $t1, $t1, 153
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 608($s0)
lw   $t6, 608($s0)

# --- block 153 ---
addi $t0, $t0, 153
addi $t1, $t1, 154
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 612($s0)
lw   $t6, 612($s0)

# --- block 154 ---
addi $t0, $t0, 154
addi $t1, $t1, 155
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 616($s0)
lw   $t6, 616($s0)

# --- block 155 ---
addi $t0, $t0, 155
addi $t1, $t1, 156
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 620($s0)
lw   $t6, 620($s0)

# --- block 156 ---
addi $t0, $t0, 156
addi $t1, $t1, 157
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 624($s0)
lw   $t6, 624($s0)

# --- block 157 ---
addi $t0, $t0, 157
addi $t1, $t1, 158
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 628($s0)
lw   $t6, 628($s0)

# --- block 158 ---
addi $t0, $t0, 158
addi $t1, $t1, 159
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 632($s0)
lw   $t6, 632($s0)

# --- block 159 ---
addi $t0, $t0, 159
addi $t1, $t1, 160
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 636($s0)
lw   $t6, 636($s0)

# --- block 160 ---
addi $t0, $t0, 160
addi $t1, $t1, 161
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 640($s0)
lw   $t6, 640($s0)

# --- block 161 ---
addi $t0, $t0, 161
addi $t1, $t1, 162
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 644($s0)
lw   $t6, 644($s0)

# --- block 162 ---
addi $t0, $t0, 162
addi $t1, $t1, 163
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 648($s0)
lw   $t6, 648($s0)

# --- block 163 ---
addi $t0, $t0, 163
addi $t1, $t1, 164
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 652($s0)
lw   $t6, 652($s0)

# --- block 164 ---
addi $t0, $t0, 164
addi $t1, $t1, 165
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 656($s0)
lw   $t6, 656($s0)

# --- block 165 ---
addi $t0, $t0, 165
addi $t1, $t1, 166
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 660($s0)
lw   $t6, 660($s0)

# --- block 166 ---
addi $t0, $t0, 166
addi $t1, $t1, 167
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 664($s0)
lw   $t6, 664($s0)

# --- block 167 ---
addi $t0, $t0, 167
addi $t1, $t1, 168
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 668($s0)
lw   $t6, 668($s0)

# --- block 168 ---
addi $t0, $t0, 168
addi $t1, $t1, 169
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 672($s0)
lw   $t6, 672($s0)

# --- block 169 ---
addi $t0, $t0, 169
addi $t1, $t1, 170
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 676($s0)
lw   $t6, 676($s0)

# --- block 170 ---
addi $t0, $t0, 170
addi $t1, $t1, 171
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 680($s0)
lw   $t6, 680($s0)

# --- block 171 ---
addi $t0, $t0, 171
addi $t1, $t1, 172
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 684($s0)
lw   $t6, 684($s0)

# --- block 172 ---
addi $t0, $t0, 172
addi $t1, $t1, 173
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 688($s0)
lw   $t6, 688($s0)

# --- block 173 ---
addi $t0, $t0, 173
addi $t1, $t1, 174
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 692($s0)
lw   $t6, 692($s0)

# --- block 174 ---
addi $t0, $t0, 174
addi $t1, $t1, 175
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 696($s0)
lw   $t6, 696($s0)

# --- block 175 ---
addi $t0, $t0, 175
addi $t1, $t1, 176
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 700($s0)
lw   $t6, 700($s0)

# --- block 176 ---
addi $t0, $t0, 176
addi $t1, $t1, 177
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 704($s0)
lw   $t6, 704($s0)

# --- block 177 ---
addi $t0, $t0, 177
addi $t1, $t1, 178
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 708($s0)
lw   $t6, 708($s0)

# --- block 178 ---
addi $t0, $t0, 178
addi $t1, $t1, 179
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 712($s0)
lw   $t6, 712($s0)

# --- block 179 ---
addi $t0, $t0, 179
addi $t1, $t1, 180
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 716($s0)
lw   $t6, 716($s0)

# --- block 180 ---
addi $t0, $t0, 180
addi $t1, $t1, 181
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 720($s0)
lw   $t6, 720($s0)

# --- block 181 ---
addi $t0, $t0, 181
addi $t1, $t1, 182
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 724($s0)
lw   $t6, 724($s0)

# --- block 182 ---
addi $t0, $t0, 182
addi $t1, $t1, 183
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 728($s0)
lw   $t6, 728($s0)

# --- block 183 ---
addi $t0, $t0, 183
addi $t1, $t1, 184
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 732($s0)
lw   $t6, 732($s0)

# --- block 184 ---
addi $t0, $t0, 184
addi $t1, $t1, 185
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 736($s0)
lw   $t6, 736($s0)

# --- block 185 ---
addi $t0, $t0, 185
addi $t1, $t1, 186
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 740($s0)
lw   $t6, 740($s0)

# --- block 186 ---
addi $t0, $t0, 186
addi $t1, $t1, 187
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 744($s0)
lw   $t6, 744($s0)

# --- block 187 ---
addi $t0, $t0, 187
addi $t1, $t1, 188
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 748($s0)
lw   $t6, 748($s0)

# --- block 188 ---
addi $t0, $t0, 188
addi $t1, $t1, 189
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 752($s0)
lw   $t6, 752($s0)

# --- block 189 ---
addi $t0, $t0, 189
addi $t1, $t1, 190
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 756($s0)
lw   $t6, 756($s0)

# --- block 190 ---
addi $t0, $t0, 190
addi $t1, $t1, 191
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 760($s0)
lw   $t6, 760($s0)

# --- block 191 ---
addi $t0, $t0, 191
addi $t1, $t1, 192
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 764($s0)
lw   $t6, 764($s0)

# --- block 192 ---
addi $t0, $t0, 192
addi $t1, $t1, 193
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 768($s0)
lw   $t6, 768($s0)

# --- block 193 ---
addi $t0, $t0, 193
addi $t1, $t1, 194
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 772($s0)
lw   $t6, 772($s0)

# --- block 194 ---
addi $t0, $t0, 194
addi $t1, $t1, 195
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 776($s0)
lw   $t6, 776($s0)

# --- block 195 ---
addi $t0, $t0, 195
addi $t1, $t1, 196
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 780($s0)
lw   $t6, 780($s0)

# --- block 196 ---
addi $t0, $t0, 196
addi $t1, $t1, 197
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 784($s0)
lw   $t6, 784($s0)

# --- block 197 ---
addi $t0, $t0, 197
addi $t1, $t1, 198
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 788($s0)
lw   $t6, 788($s0)

# --- block 198 ---
addi $t0, $t0, 198
addi $t1, $t1, 199
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 792($s0)
lw   $t6, 792($s0)

# --- block 199 ---
addi $t0, $t0, 199
addi $t1, $t1, 200
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 796($s0)
lw   $t6, 796($s0)

# --- block 200 ---
addi $t0, $t0, 200
addi $t1, $t1, 201
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 800($s0)
lw   $t6, 800($s0)

# --- block 201 ---
addi $t0, $t0, 201
addi $t1, $t1, 202
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 804($s0)
lw   $t6, 804($s0)

# --- block 202 ---
addi $t0, $t0, 202
addi $t1, $t1, 203
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 808($s0)
lw   $t6, 808($s0)

# --- block 203 ---
addi $t0, $t0, 203
addi $t1, $t1, 204
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 812($s0)
lw   $t6, 812($s0)

# --- block 204 ---
addi $t0, $t0, 204
addi $t1, $t1, 205
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 816($s0)
lw   $t6, 816($s0)

# --- block 205 ---
addi $t0, $t0, 205
addi $t1, $t1, 206
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 820($s0)
lw   $t6, 820($s0)

# --- block 206 ---
addi $t0, $t0, 206
addi $t1, $t1, 207
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 824($s0)
lw   $t6, 824($s0)

# --- block 207 ---
addi $t0, $t0, 207
addi $t1, $t1, 208
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 828($s0)
lw   $t6, 828($s0)

# --- block 208 ---
addi $t0, $t0, 208
addi $t1, $t1, 209
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 832($s0)
lw   $t6, 832($s0)

# --- block 209 ---
addi $t0, $t0, 209
addi $t1, $t1, 210
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 836($s0)
lw   $t6, 836($s0)

# --- block 210 ---
addi $t0, $t0, 210
addi $t1, $t1, 211
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 840($s0)
lw   $t6, 840($s0)

# --- block 211 ---
addi $t0, $t0, 211
addi $t1, $t1, 212
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 844($s0)
lw   $t6, 844($s0)

# --- block 212 ---
addi $t0, $t0, 212
addi $t1, $t1, 213
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 848($s0)
lw   $t6, 848($s0)

# --- block 213 ---
addi $t0, $t0, 213
addi $t1, $t1, 214
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 852($s0)
lw   $t6, 852($s0)

# --- block 214 ---
addi $t0, $t0, 214
addi $t1, $t1, 215
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 856($s0)
lw   $t6, 856($s0)

# --- block 215 ---
addi $t0, $t0, 215
addi $t1, $t1, 216
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 860($s0)
lw   $t6, 860($s0)

# --- block 216 ---
addi $t0, $t0, 216
addi $t1, $t1, 217
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 864($s0)
lw   $t6, 864($s0)

# --- block 217 ---
addi $t0, $t0, 217
addi $t1, $t1, 218
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 868($s0)
lw   $t6, 868($s0)

# --- block 218 ---
addi $t0, $t0, 218
addi $t1, $t1, 219
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 872($s0)
lw   $t6, 872($s0)

# --- block 219 ---
addi $t0, $t0, 219
addi $t1, $t1, 220
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 876($s0)
lw   $t6, 876($s0)

# --- block 220 ---
addi $t0, $t0, 220
addi $t1, $t1, 221
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 880($s0)
lw   $t6, 880($s0)

# --- block 221 ---
addi $t0, $t0, 221
addi $t1, $t1, 222
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 884($s0)
lw   $t6, 884($s0)

# --- block 222 ---
addi $t0, $t0, 222
addi $t1, $t1, 223
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 888($s0)
lw   $t6, 888($s0)

# --- block 223 ---
addi $t0, $t0, 223
addi $t1, $t1, 224
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 892($s0)
lw   $t6, 892($s0)

# --- block 224 ---
addi $t0, $t0, 224
addi $t1, $t1, 225
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 896($s0)
lw   $t6, 896($s0)

# --- block 225 ---
addi $t0, $t0, 225
addi $t1, $t1, 226
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 900($s0)
lw   $t6, 900($s0)

# --- block 226 ---
addi $t0, $t0, 226
addi $t1, $t1, 227
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 904($s0)
lw   $t6, 904($s0)

# --- block 227 ---
addi $t0, $t0, 227
addi $t1, $t1, 228
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 908($s0)
lw   $t6, 908($s0)

# --- block 228 ---
addi $t0, $t0, 228
addi $t1, $t1, 229
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 912($s0)
lw   $t6, 912($s0)

# --- block 229 ---
addi $t0, $t0, 229
addi $t1, $t1, 230
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 916($s0)
lw   $t6, 916($s0)

# --- block 230 ---
addi $t0, $t0, 230
addi $t1, $t1, 231
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 920($s0)
lw   $t6, 920($s0)

# --- block 231 ---
addi $t0, $t0, 231
addi $t1, $t1, 232
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 924($s0)
lw   $t6, 924($s0)

# --- block 232 ---
addi $t0, $t0, 232
addi $t1, $t1, 233
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 928($s0)
lw   $t6, 928($s0)

# --- block 233 ---
addi $t0, $t0, 233
addi $t1, $t1, 234
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 932($s0)
lw   $t6, 932($s0)

# --- block 234 ---
addi $t0, $t0, 234
addi $t1, $t1, 235
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 936($s0)
lw   $t6, 936($s0)

# --- block 235 ---
addi $t0, $t0, 235
addi $t1, $t1, 236
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 940($s0)
lw   $t6, 940($s0)

# --- block 236 ---
addi $t0, $t0, 236
addi $t1, $t1, 237
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 944($s0)
lw   $t6, 944($s0)

# --- block 237 ---
addi $t0, $t0, 237
addi $t1, $t1, 238
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 948($s0)
lw   $t6, 948($s0)

# --- block 238 ---
addi $t0, $t0, 238
addi $t1, $t1, 239
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 952($s0)
lw   $t6, 952($s0)

# --- block 239 ---
addi $t0, $t0, 239
addi $t1, $t1, 240
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 956($s0)
lw   $t6, 956($s0)

# --- block 240 ---
addi $t0, $t0, 240
addi $t1, $t1, 241
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 960($s0)
lw   $t6, 960($s0)

# --- block 241 ---
addi $t0, $t0, 241
addi $t1, $t1, 242
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 964($s0)
lw   $t6, 964($s0)

# --- block 242 ---
addi $t0, $t0, 242
addi $t1, $t1, 243
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 968($s0)
lw   $t6, 968($s0)

# --- block 243 ---
addi $t0, $t0, 243
addi $t1, $t1, 244
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 972($s0)
lw   $t6, 972($s0)

# --- block 244 ---
addi $t0, $t0, 244
addi $t1, $t1, 245
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 976($s0)
lw   $t6, 976($s0)

# --- block 245 ---
addi $t0, $t0, 245
addi $t1, $t1, 246
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 980($s0)
lw   $t6, 980($s0)

# --- block 246 ---
addi $t0, $t0, 246
addi $t1, $t1, 247
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 984($s0)
lw   $t6, 984($s0)

# --- block 247 ---
addi $t0, $t0, 247
addi $t1, $t1, 248
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 988($s0)
lw   $t6, 988($s0)

# --- block 248 ---
addi $t0, $t0, 248
addi $t1, $t1, 249
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 992($s0)
lw   $t6, 992($s0)

# --- block 249 ---
addi $t0, $t0, 249
addi $t1, $t1, 250
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 996($s0)
lw   $t6, 996($s0)

# --- block 250 ---
addi $t0, $t0, 250
addi $t1, $t1, 251
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1000($s0)
lw   $t6, 1000($s0)

# --- block 251 ---
addi $t0, $t0, 251
addi $t1, $t1, 252
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1004($s0)
lw   $t6, 1004($s0)

# --- block 252 ---
addi $t0, $t0, 252
addi $t1, $t1, 253
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1008($s0)
lw   $t6, 1008($s0)

# --- block 253 ---
addi $t0, $t0, 253
addi $t1, $t1, 254
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1012($s0)
lw   $t6, 1012($s0)

# --- block 254 ---
addi $t0, $t0, 254
addi $t1, $t1, 255
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1016($s0)
lw   $t6, 1016($s0)

# --- block 255 ---
addi $t0, $t0, 255
addi $t1, $t1, 256
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1020($s0)
lw   $t6, 1020($s0)

# --- block 256 ---
addi $t0, $t0, 256
addi $t1, $t1, 257
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1024($s0)
lw   $t6, 1024($s0)

# --- block 257 ---
addi $t0, $t0, 257
addi $t1, $t1, 258
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1028($s0)
lw   $t6, 1028($s0)

# --- block 258 ---
addi $t0, $t0, 258
addi $t1, $t1, 259
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1032($s0)
lw   $t6, 1032($s0)

# --- block 259 ---
addi $t0, $t0, 259
addi $t1, $t1, 260
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1036($s0)
lw   $t6, 1036($s0)

# --- block 260 ---
addi $t0, $t0, 260
addi $t1, $t1, 261
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1040($s0)
lw   $t6, 1040($s0)

# --- block 261 ---
addi $t0, $t0, 261
addi $t1, $t1, 262
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1044($s0)
lw   $t6, 1044($s0)

# --- block 262 ---
addi $t0, $t0, 262
addi $t1, $t1, 263
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1048($s0)
lw   $t6, 1048($s0)

# --- block 263 ---
addi $t0, $t0, 263
addi $t1, $t1, 264
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1052($s0)
lw   $t6, 1052($s0)

# --- block 264 ---
addi $t0, $t0, 264
addi $t1, $t1, 265
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1056($s0)
lw   $t6, 1056($s0)

# --- block 265 ---
addi $t0, $t0, 265
addi $t1, $t1, 266
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1060($s0)
lw   $t6, 1060($s0)

# --- block 266 ---
addi $t0, $t0, 266
addi $t1, $t1, 267
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1064($s0)
lw   $t6, 1064($s0)

# --- block 267 ---
addi $t0, $t0, 267
addi $t1, $t1, 268
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1068($s0)
lw   $t6, 1068($s0)

# --- block 268 ---
addi $t0, $t0, 268
addi $t1, $t1, 269
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1072($s0)
lw   $t6, 1072($s0)

# --- block 269 ---
addi $t0, $t0, 269
addi $t1, $t1, 270
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1076($s0)
lw   $t6, 1076($s0)

# --- block 270 ---
addi $t0, $t0, 270
addi $t1, $t1, 271
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1080($s0)
lw   $t6, 1080($s0)

# --- block 271 ---
addi $t0, $t0, 271
addi $t1, $t1, 272
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1084($s0)
lw   $t6, 1084($s0)

# --- block 272 ---
addi $t0, $t0, 272
addi $t1, $t1, 273
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1088($s0)
lw   $t6, 1088($s0)

# --- block 273 ---
addi $t0, $t0, 273
addi $t1, $t1, 274
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1092($s0)
lw   $t6, 1092($s0)

# --- block 274 ---
addi $t0, $t0, 274
addi $t1, $t1, 275
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1096($s0)
lw   $t6, 1096($s0)

# --- block 275 ---
addi $t0, $t0, 275
addi $t1, $t1, 276
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1100($s0)
lw   $t6, 1100($s0)

# --- block 276 ---
addi $t0, $t0, 276
addi $t1, $t1, 277
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1104($s0)
lw   $t6, 1104($s0)

# --- block 277 ---
addi $t0, $t0, 277
addi $t1, $t1, 278
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1108($s0)
lw   $t6, 1108($s0)

# --- block 278 ---
addi $t0, $t0, 278
addi $t1, $t1, 279
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1112($s0)
lw   $t6, 1112($s0)

# --- block 279 ---
addi $t0, $t0, 279
addi $t1, $t1, 280
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1116($s0)
lw   $t6, 1116($s0)

# --- block 280 ---
addi $t0, $t0, 280
addi $t1, $t1, 281
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1120($s0)
lw   $t6, 1120($s0)

# --- block 281 ---
addi $t0, $t0, 281
addi $t1, $t1, 282
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1124($s0)
lw   $t6, 1124($s0)

# --- block 282 ---
addi $t0, $t0, 282
addi $t1, $t1, 283
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1128($s0)
lw   $t6, 1128($s0)

# --- block 283 ---
addi $t0, $t0, 283
addi $t1, $t1, 284
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1132($s0)
lw   $t6, 1132($s0)

# --- block 284 ---
addi $t0, $t0, 284
addi $t1, $t1, 285
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1136($s0)
lw   $t6, 1136($s0)

# --- block 285 ---
addi $t0, $t0, 285
addi $t1, $t1, 286
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1140($s0)
lw   $t6, 1140($s0)

# --- block 286 ---
addi $t0, $t0, 286
addi $t1, $t1, 287
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1144($s0)
lw   $t6, 1144($s0)

# --- block 287 ---
addi $t0, $t0, 287
addi $t1, $t1, 288
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1148($s0)
lw   $t6, 1148($s0)

# --- block 288 ---
addi $t0, $t0, 288
addi $t1, $t1, 289
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1152($s0)
lw   $t6, 1152($s0)

# --- block 289 ---
addi $t0, $t0, 289
addi $t1, $t1, 290
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1156($s0)
lw   $t6, 1156($s0)

# --- block 290 ---
addi $t0, $t0, 290
addi $t1, $t1, 291
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1160($s0)
lw   $t6, 1160($s0)

# --- block 291 ---
addi $t0, $t0, 291
addi $t1, $t1, 292
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1164($s0)
lw   $t6, 1164($s0)

# --- block 292 ---
addi $t0, $t0, 292
addi $t1, $t1, 293
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1168($s0)
lw   $t6, 1168($s0)

# --- block 293 ---
addi $t0, $t0, 293
addi $t1, $t1, 294
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1172($s0)
lw   $t6, 1172($s0)

# --- block 294 ---
addi $t0, $t0, 294
addi $t1, $t1, 295
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1176($s0)
lw   $t6, 1176($s0)

# --- block 295 ---
addi $t0, $t0, 295
addi $t1, $t1, 296
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1180($s0)
lw   $t6, 1180($s0)

# --- block 296 ---
addi $t0, $t0, 296
addi $t1, $t1, 297
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1184($s0)
lw   $t6, 1184($s0)

# --- block 297 ---
addi $t0, $t0, 297
addi $t1, $t1, 298
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1188($s0)
lw   $t6, 1188($s0)

# --- block 298 ---
addi $t0, $t0, 298
addi $t1, $t1, 299
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1192($s0)
lw   $t6, 1192($s0)

# --- block 299 ---
addi $t0, $t0, 299
addi $t1, $t1, 300
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1196($s0)
lw   $t6, 1196($s0)

# --- block 300 ---
addi $t0, $t0, 300
addi $t1, $t1, 301
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1200($s0)
lw   $t6, 1200($s0)

# --- block 301 ---
addi $t0, $t0, 301
addi $t1, $t1, 302
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1204($s0)
lw   $t6, 1204($s0)

# --- block 302 ---
addi $t0, $t0, 302
addi $t1, $t1, 303
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1208($s0)
lw   $t6, 1208($s0)

# --- block 303 ---
addi $t0, $t0, 303
addi $t1, $t1, 304
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1212($s0)
lw   $t6, 1212($s0)

# --- block 304 ---
addi $t0, $t0, 304
addi $t1, $t1, 305
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1216($s0)
lw   $t6, 1216($s0)

# --- block 305 ---
addi $t0, $t0, 305
addi $t1, $t1, 306
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1220($s0)
lw   $t6, 1220($s0)

# --- block 306 ---
addi $t0, $t0, 306
addi $t1, $t1, 307
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1224($s0)
lw   $t6, 1224($s0)

# --- block 307 ---
addi $t0, $t0, 307
addi $t1, $t1, 308
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1228($s0)
lw   $t6, 1228($s0)

# --- block 308 ---
addi $t0, $t0, 308
addi $t1, $t1, 309
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1232($s0)
lw   $t6, 1232($s0)

# --- block 309 ---
addi $t0, $t0, 309
addi $t1, $t1, 310
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1236($s0)
lw   $t6, 1236($s0)

# --- block 310 ---
addi $t0, $t0, 310
addi $t1, $t1, 311
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1240($s0)
lw   $t6, 1240($s0)

# --- block 311 ---
addi $t0, $t0, 311
addi $t1, $t1, 312
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1244($s0)
lw   $t6, 1244($s0)

# --- block 312 ---
addi $t0, $t0, 312
addi $t1, $t1, 313
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1248($s0)
lw   $t6, 1248($s0)

# --- block 313 ---
addi $t0, $t0, 313
addi $t1, $t1, 314
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1252($s0)
lw   $t6, 1252($s0)

# --- block 314 ---
addi $t0, $t0, 314
addi $t1, $t1, 315
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1256($s0)
lw   $t6, 1256($s0)

# --- block 315 ---
addi $t0, $t0, 315
addi $t1, $t1, 316
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1260($s0)
lw   $t6, 1260($s0)

# --- block 316 ---
addi $t0, $t0, 316
addi $t1, $t1, 317
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1264($s0)
lw   $t6, 1264($s0)

# --- block 317 ---
addi $t0, $t0, 317
addi $t1, $t1, 318
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1268($s0)
lw   $t6, 1268($s0)

# --- block 318 ---
addi $t0, $t0, 318
addi $t1, $t1, 319
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1272($s0)
lw   $t6, 1272($s0)

# --- block 319 ---
addi $t0, $t0, 319
addi $t1, $t1, 320
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1276($s0)
lw   $t6, 1276($s0)

# --- block 320 ---
addi $t0, $t0, 320
addi $t1, $t1, 321
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1280($s0)
lw   $t6, 1280($s0)

# --- block 321 ---
addi $t0, $t0, 321
addi $t1, $t1, 322
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1284($s0)
lw   $t6, 1284($s0)

# --- block 322 ---
addi $t0, $t0, 322
addi $t1, $t1, 323
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1288($s0)
lw   $t6, 1288($s0)

# --- block 323 ---
addi $t0, $t0, 323
addi $t1, $t1, 324
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1292($s0)
lw   $t6, 1292($s0)

# --- block 324 ---
addi $t0, $t0, 324
addi $t1, $t1, 325
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1296($s0)
lw   $t6, 1296($s0)

# --- block 325 ---
addi $t0, $t0, 325
addi $t1, $t1, 326
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1300($s0)
lw   $t6, 1300($s0)

# --- block 326 ---
addi $t0, $t0, 326
addi $t1, $t1, 327
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1304($s0)
lw   $t6, 1304($s0)

# --- block 327 ---
addi $t0, $t0, 327
addi $t1, $t1, 328
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1308($s0)
lw   $t6, 1308($s0)

# --- block 328 ---
addi $t0, $t0, 328
addi $t1, $t1, 329
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1312($s0)
lw   $t6, 1312($s0)

# --- block 329 ---
addi $t0, $t0, 329
addi $t1, $t1, 330
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1316($s0)
lw   $t6, 1316($s0)

# --- block 330 ---
addi $t0, $t0, 330
addi $t1, $t1, 331
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1320($s0)
lw   $t6, 1320($s0)

# --- block 331 ---
addi $t0, $t0, 331
addi $t1, $t1, 332
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1324($s0)
lw   $t6, 1324($s0)

# --- block 332 ---
addi $t0, $t0, 332
addi $t1, $t1, 333
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1328($s0)
lw   $t6, 1328($s0)

# --- block 333 ---
addi $t0, $t0, 333
addi $t1, $t1, 334
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1332($s0)
lw   $t6, 1332($s0)

# --- block 334 ---
addi $t0, $t0, 334
addi $t1, $t1, 335
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1336($s0)
lw   $t6, 1336($s0)

# --- block 335 ---
addi $t0, $t0, 335
addi $t1, $t1, 336
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1340($s0)
lw   $t6, 1340($s0)

# --- block 336 ---
addi $t0, $t0, 336
addi $t1, $t1, 337
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1344($s0)
lw   $t6, 1344($s0)

# --- block 337 ---
addi $t0, $t0, 337
addi $t1, $t1, 338
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1348($s0)
lw   $t6, 1348($s0)

# --- block 338 ---
addi $t0, $t0, 338
addi $t1, $t1, 339
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1352($s0)
lw   $t6, 1352($s0)

# --- block 339 ---
addi $t0, $t0, 339
addi $t1, $t1, 340
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1356($s0)
lw   $t6, 1356($s0)

# --- block 340 ---
addi $t0, $t0, 340
addi $t1, $t1, 341
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1360($s0)
lw   $t6, 1360($s0)

# --- block 341 ---
addi $t0, $t0, 341
addi $t1, $t1, 342
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1364($s0)
lw   $t6, 1364($s0)

# --- block 342 ---
addi $t0, $t0, 342
addi $t1, $t1, 343
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1368($s0)
lw   $t6, 1368($s0)

# --- block 343 ---
addi $t0, $t0, 343
addi $t1, $t1, 344
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1372($s0)
lw   $t6, 1372($s0)

# --- block 344 ---
addi $t0, $t0, 344
addi $t1, $t1, 345
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1376($s0)
lw   $t6, 1376($s0)

# --- block 345 ---
addi $t0, $t0, 345
addi $t1, $t1, 346
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1380($s0)
lw   $t6, 1380($s0)

# --- block 346 ---
addi $t0, $t0, 346
addi $t1, $t1, 347
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1384($s0)
lw   $t6, 1384($s0)

# --- block 347 ---
addi $t0, $t0, 347
addi $t1, $t1, 348
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1388($s0)
lw   $t6, 1388($s0)

# --- block 348 ---
addi $t0, $t0, 348
addi $t1, $t1, 349
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1392($s0)
lw   $t6, 1392($s0)

# --- block 349 ---
addi $t0, $t0, 349
addi $t1, $t1, 350
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1396($s0)
lw   $t6, 1396($s0)

# --- block 350 ---
addi $t0, $t0, 350
addi $t1, $t1, 351
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1400($s0)
lw   $t6, 1400($s0)

# --- block 351 ---
addi $t0, $t0, 351
addi $t1, $t1, 352
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1404($s0)
lw   $t6, 1404($s0)

# --- block 352 ---
addi $t0, $t0, 352
addi $t1, $t1, 353
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1408($s0)
lw   $t6, 1408($s0)

# --- block 353 ---
addi $t0, $t0, 353
addi $t1, $t1, 354
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1412($s0)
lw   $t6, 1412($s0)

# --- block 354 ---
addi $t0, $t0, 354
addi $t1, $t1, 355
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1416($s0)
lw   $t6, 1416($s0)

# --- block 355 ---
addi $t0, $t0, 355
addi $t1, $t1, 356
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1420($s0)
lw   $t6, 1420($s0)

# --- block 356 ---
addi $t0, $t0, 356
addi $t1, $t1, 357
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1424($s0)
lw   $t6, 1424($s0)

# --- block 357 ---
addi $t0, $t0, 357
addi $t1, $t1, 358
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1428($s0)
lw   $t6, 1428($s0)

# --- block 358 ---
addi $t0, $t0, 358
addi $t1, $t1, 359
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1432($s0)
lw   $t6, 1432($s0)

# --- block 359 ---
addi $t0, $t0, 359
addi $t1, $t1, 360
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1436($s0)
lw   $t6, 1436($s0)

# --- block 360 ---
addi $t0, $t0, 360
addi $t1, $t1, 361
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1440($s0)
lw   $t6, 1440($s0)

# --- block 361 ---
addi $t0, $t0, 361
addi $t1, $t1, 362
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1444($s0)
lw   $t6, 1444($s0)

# --- block 362 ---
addi $t0, $t0, 362
addi $t1, $t1, 363
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1448($s0)
lw   $t6, 1448($s0)

# --- block 363 ---
addi $t0, $t0, 363
addi $t1, $t1, 364
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1452($s0)
lw   $t6, 1452($s0)

# --- block 364 ---
addi $t0, $t0, 364
addi $t1, $t1, 365
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1456($s0)
lw   $t6, 1456($s0)

# --- block 365 ---
addi $t0, $t0, 365
addi $t1, $t1, 366
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1460($s0)
lw   $t6, 1460($s0)

# --- block 366 ---
addi $t0, $t0, 366
addi $t1, $t1, 367
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1464($s0)
lw   $t6, 1464($s0)

# --- block 367 ---
addi $t0, $t0, 367
addi $t1, $t1, 368
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1468($s0)
lw   $t6, 1468($s0)

# --- block 368 ---
addi $t0, $t0, 368
addi $t1, $t1, 369
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1472($s0)
lw   $t6, 1472($s0)

# --- block 369 ---
addi $t0, $t0, 369
addi $t1, $t1, 370
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1476($s0)
lw   $t6, 1476($s0)

# --- block 370 ---
addi $t0, $t0, 370
addi $t1, $t1, 371
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1480($s0)
lw   $t6, 1480($s0)

# --- block 371 ---
addi $t0, $t0, 371
addi $t1, $t1, 372
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1484($s0)
lw   $t6, 1484($s0)

# --- block 372 ---
addi $t0, $t0, 372
addi $t1, $t1, 373
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1488($s0)
lw   $t6, 1488($s0)

# --- block 373 ---
addi $t0, $t0, 373
addi $t1, $t1, 374
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1492($s0)
lw   $t6, 1492($s0)

# --- block 374 ---
addi $t0, $t0, 374
addi $t1, $t1, 375
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1496($s0)
lw   $t6, 1496($s0)

# --- block 375 ---
addi $t0, $t0, 375
addi $t1, $t1, 376
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1500($s0)
lw   $t6, 1500($s0)

# --- block 376 ---
addi $t0, $t0, 376
addi $t1, $t1, 377
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1504($s0)
lw   $t6, 1504($s0)

# --- block 377 ---
addi $t0, $t0, 377
addi $t1, $t1, 378
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1508($s0)
lw   $t6, 1508($s0)

# --- block 378 ---
addi $t0, $t0, 378
addi $t1, $t1, 379
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1512($s0)
lw   $t6, 1512($s0)

# --- block 379 ---
addi $t0, $t0, 379
addi $t1, $t1, 380
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1516($s0)
lw   $t6, 1516($s0)

# --- block 380 ---
addi $t0, $t0, 380
addi $t1, $t1, 381
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1520($s0)
lw   $t6, 1520($s0)

# --- block 381 ---
addi $t0, $t0, 381
addi $t1, $t1, 382
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1524($s0)
lw   $t6, 1524($s0)

# --- block 382 ---
addi $t0, $t0, 382
addi $t1, $t1, 383
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1528($s0)
lw   $t6, 1528($s0)

# --- block 383 ---
addi $t0, $t0, 383
addi $t1, $t1, 384
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1532($s0)
lw   $t6, 1532($s0)

# --- block 384 ---
addi $t0, $t0, 384
addi $t1, $t1, 385
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1536($s0)
lw   $t6, 1536($s0)

# --- block 385 ---
addi $t0, $t0, 385
addi $t1, $t1, 386
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1540($s0)
lw   $t6, 1540($s0)

# --- block 386 ---
addi $t0, $t0, 386
addi $t1, $t1, 387
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1544($s0)
lw   $t6, 1544($s0)

# --- block 387 ---
addi $t0, $t0, 387
addi $t1, $t1, 388
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1548($s0)
lw   $t6, 1548($s0)

# --- block 388 ---
addi $t0, $t0, 388
addi $t1, $t1, 389
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1552($s0)
lw   $t6, 1552($s0)

# --- block 389 ---
addi $t0, $t0, 389
addi $t1, $t1, 390
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1556($s0)
lw   $t6, 1556($s0)

# --- block 390 ---
addi $t0, $t0, 390
addi $t1, $t1, 391
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1560($s0)
lw   $t6, 1560($s0)

# --- block 391 ---
addi $t0, $t0, 391
addi $t1, $t1, 392
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1564($s0)
lw   $t6, 1564($s0)

# --- block 392 ---
addi $t0, $t0, 392
addi $t1, $t1, 393
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1568($s0)
lw   $t6, 1568($s0)

# --- block 393 ---
addi $t0, $t0, 393
addi $t1, $t1, 394
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1572($s0)
lw   $t6, 1572($s0)

# --- block 394 ---
addi $t0, $t0, 394
addi $t1, $t1, 395
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1576($s0)
lw   $t6, 1576($s0)

# --- block 395 ---
addi $t0, $t0, 395
addi $t1, $t1, 396
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1580($s0)
lw   $t6, 1580($s0)

# --- block 396 ---
addi $t0, $t0, 396
addi $t1, $t1, 397
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1584($s0)
lw   $t6, 1584($s0)

# --- block 397 ---
addi $t0, $t0, 397
addi $t1, $t1, 398
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1588($s0)
lw   $t6, 1588($s0)

# --- block 398 ---
addi $t0, $t0, 398
addi $t1, $t1, 399
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1592($s0)
lw   $t6, 1592($s0)

# --- block 399 ---
addi $t0, $t0, 399
addi $t1, $t1, 400
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1596($s0)
lw   $t6, 1596($s0)

# --- block 400 ---
addi $t0, $t0, 400
addi $t1, $t1, 401
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1600($s0)
lw   $t6, 1600($s0)

# --- block 401 ---
addi $t0, $t0, 401
addi $t1, $t1, 402
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1604($s0)
lw   $t6, 1604($s0)

# --- block 402 ---
addi $t0, $t0, 402
addi $t1, $t1, 403
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1608($s0)
lw   $t6, 1608($s0)

# --- block 403 ---
addi $t0, $t0, 403
addi $t1, $t1, 404
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1612($s0)
lw   $t6, 1612($s0)

# --- block 404 ---
addi $t0, $t0, 404
addi $t1, $t1, 405
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1616($s0)
lw   $t6, 1616($s0)

# --- block 405 ---
addi $t0, $t0, 405
addi $t1, $t1, 406
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1620($s0)
lw   $t6, 1620($s0)

# --- block 406 ---
addi $t0, $t0, 406
addi $t1, $t1, 407
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1624($s0)
lw   $t6, 1624($s0)

# --- block 407 ---
addi $t0, $t0, 407
addi $t1, $t1, 408
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1628($s0)
lw   $t6, 1628($s0)

# --- block 408 ---
addi $t0, $t0, 408
addi $t1, $t1, 409
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1632($s0)
lw   $t6, 1632($s0)

# --- block 409 ---
addi $t0, $t0, 409
addi $t1, $t1, 410
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1636($s0)
lw   $t6, 1636($s0)

# --- block 410 ---
addi $t0, $t0, 410
addi $t1, $t1, 411
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1640($s0)
lw   $t6, 1640($s0)

# --- block 411 ---
addi $t0, $t0, 411
addi $t1, $t1, 412
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1644($s0)
lw   $t6, 1644($s0)

# --- block 412 ---
addi $t0, $t0, 412
addi $t1, $t1, 413
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1648($s0)
lw   $t6, 1648($s0)

# --- block 413 ---
addi $t0, $t0, 413
addi $t1, $t1, 414
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1652($s0)
lw   $t6, 1652($s0)

# --- block 414 ---
addi $t0, $t0, 414
addi $t1, $t1, 415
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1656($s0)
lw   $t6, 1656($s0)

# --- block 415 ---
addi $t0, $t0, 415
addi $t1, $t1, 416
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1660($s0)
lw   $t6, 1660($s0)

# --- block 416 ---
addi $t0, $t0, 416
addi $t1, $t1, 417
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1664($s0)
lw   $t6, 1664($s0)

# --- block 417 ---
addi $t0, $t0, 417
addi $t1, $t1, 418
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1668($s0)
lw   $t6, 1668($s0)

# --- block 418 ---
addi $t0, $t0, 418
addi $t1, $t1, 419
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1672($s0)
lw   $t6, 1672($s0)

# --- block 419 ---
addi $t0, $t0, 419
addi $t1, $t1, 420
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1676($s0)
lw   $t6, 1676($s0)

# --- block 420 ---
addi $t0, $t0, 420
addi $t1, $t1, 421
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1680($s0)
lw   $t6, 1680($s0)

# --- block 421 ---
addi $t0, $t0, 421
addi $t1, $t1, 422
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1684($s0)
lw   $t6, 1684($s0)

# --- block 422 ---
addi $t0, $t0, 422
addi $t1, $t1, 423
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1688($s0)
lw   $t6, 1688($s0)

# --- block 423 ---
addi $t0, $t0, 423
addi $t1, $t1, 424
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1692($s0)
lw   $t6, 1692($s0)

# --- block 424 ---
addi $t0, $t0, 424
addi $t1, $t1, 425
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1696($s0)
lw   $t6, 1696($s0)

# --- block 425 ---
addi $t0, $t0, 425
addi $t1, $t1, 426
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1700($s0)
lw   $t6, 1700($s0)

# --- block 426 ---
addi $t0, $t0, 426
addi $t1, $t1, 427
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1704($s0)
lw   $t6, 1704($s0)

# --- block 427 ---
addi $t0, $t0, 427
addi $t1, $t1, 428
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1708($s0)
lw   $t6, 1708($s0)

# --- block 428 ---
addi $t0, $t0, 428
addi $t1, $t1, 429
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1712($s0)
lw   $t6, 1712($s0)

# --- block 429 ---
addi $t0, $t0, 429
addi $t1, $t1, 430
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1716($s0)
lw   $t6, 1716($s0)

# --- block 430 ---
addi $t0, $t0, 430
addi $t1, $t1, 431
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1720($s0)
lw   $t6, 1720($s0)

# --- block 431 ---
addi $t0, $t0, 431
addi $t1, $t1, 432
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1724($s0)
lw   $t6, 1724($s0)

# --- block 432 ---
addi $t0, $t0, 432
addi $t1, $t1, 433
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1728($s0)
lw   $t6, 1728($s0)

# --- block 433 ---
addi $t0, $t0, 433
addi $t1, $t1, 434
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1732($s0)
lw   $t6, 1732($s0)

# --- block 434 ---
addi $t0, $t0, 434
addi $t1, $t1, 435
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1736($s0)
lw   $t6, 1736($s0)

# --- block 435 ---
addi $t0, $t0, 435
addi $t1, $t1, 436
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1740($s0)
lw   $t6, 1740($s0)

# --- block 436 ---
addi $t0, $t0, 436
addi $t1, $t1, 437
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1744($s0)
lw   $t6, 1744($s0)

# --- block 437 ---
addi $t0, $t0, 437
addi $t1, $t1, 438
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1748($s0)
lw   $t6, 1748($s0)

# --- block 438 ---
addi $t0, $t0, 438
addi $t1, $t1, 439
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1752($s0)
lw   $t6, 1752($s0)

# --- block 439 ---
addi $t0, $t0, 439
addi $t1, $t1, 440
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1756($s0)
lw   $t6, 1756($s0)

# --- block 440 ---
addi $t0, $t0, 440
addi $t1, $t1, 441
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1760($s0)
lw   $t6, 1760($s0)

# --- block 441 ---
addi $t0, $t0, 441
addi $t1, $t1, 442
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1764($s0)
lw   $t6, 1764($s0)

# --- block 442 ---
addi $t0, $t0, 442
addi $t1, $t1, 443
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1768($s0)
lw   $t6, 1768($s0)

# --- block 443 ---
addi $t0, $t0, 443
addi $t1, $t1, 444
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1772($s0)
lw   $t6, 1772($s0)

# --- block 444 ---
addi $t0, $t0, 444
addi $t1, $t1, 445
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1776($s0)
lw   $t6, 1776($s0)

# --- block 445 ---
addi $t0, $t0, 445
addi $t1, $t1, 446
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1780($s0)
lw   $t6, 1780($s0)

# --- block 446 ---
addi $t0, $t0, 446
addi $t1, $t1, 447
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1784($s0)
lw   $t6, 1784($s0)

# --- block 447 ---
addi $t0, $t0, 447
addi $t1, $t1, 448
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1788($s0)
lw   $t6, 1788($s0)

# --- block 448 ---
addi $t0, $t0, 448
addi $t1, $t1, 449
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1792($s0)
lw   $t6, 1792($s0)

# --- block 449 ---
addi $t0, $t0, 449
addi $t1, $t1, 450
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1796($s0)
lw   $t6, 1796($s0)

# --- block 450 ---
addi $t0, $t0, 450
addi $t1, $t1, 451
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1800($s0)
lw   $t6, 1800($s0)

# --- block 451 ---
addi $t0, $t0, 451
addi $t1, $t1, 452
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1804($s0)
lw   $t6, 1804($s0)

# --- block 452 ---
addi $t0, $t0, 452
addi $t1, $t1, 453
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1808($s0)
lw   $t6, 1808($s0)

# --- block 453 ---
addi $t0, $t0, 453
addi $t1, $t1, 454
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1812($s0)
lw   $t6, 1812($s0)

# --- block 454 ---
addi $t0, $t0, 454
addi $t1, $t1, 455
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1816($s0)
lw   $t6, 1816($s0)

# --- block 455 ---
addi $t0, $t0, 455
addi $t1, $t1, 456
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1820($s0)
lw   $t6, 1820($s0)

# --- block 456 ---
addi $t0, $t0, 456
addi $t1, $t1, 457
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1824($s0)
lw   $t6, 1824($s0)

# --- block 457 ---
addi $t0, $t0, 457
addi $t1, $t1, 458
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1828($s0)
lw   $t6, 1828($s0)

# --- block 458 ---
addi $t0, $t0, 458
addi $t1, $t1, 459
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1832($s0)
lw   $t6, 1832($s0)

# --- block 459 ---
addi $t0, $t0, 459
addi $t1, $t1, 460
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1836($s0)
lw   $t6, 1836($s0)

# --- block 460 ---
addi $t0, $t0, 460
addi $t1, $t1, 461
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1840($s0)
lw   $t6, 1840($s0)

# --- block 461 ---
addi $t0, $t0, 461
addi $t1, $t1, 462
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1844($s0)
lw   $t6, 1844($s0)

# --- block 462 ---
addi $t0, $t0, 462
addi $t1, $t1, 463
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1848($s0)
lw   $t6, 1848($s0)

# --- block 463 ---
addi $t0, $t0, 463
addi $t1, $t1, 464
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1852($s0)
lw   $t6, 1852($s0)

# --- block 464 ---
addi $t0, $t0, 464
addi $t1, $t1, 465
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1856($s0)
lw   $t6, 1856($s0)

# --- block 465 ---
addi $t0, $t0, 465
addi $t1, $t1, 466
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1860($s0)
lw   $t6, 1860($s0)

# --- block 466 ---
addi $t0, $t0, 466
addi $t1, $t1, 467
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1864($s0)
lw   $t6, 1864($s0)

# --- block 467 ---
addi $t0, $t0, 467
addi $t1, $t1, 468
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1868($s0)
lw   $t6, 1868($s0)

# --- block 468 ---
addi $t0, $t0, 468
addi $t1, $t1, 469
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1872($s0)
lw   $t6, 1872($s0)

# --- block 469 ---
addi $t0, $t0, 469
addi $t1, $t1, 470
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1876($s0)
lw   $t6, 1876($s0)

# --- block 470 ---
addi $t0, $t0, 470
addi $t1, $t1, 471
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1880($s0)
lw   $t6, 1880($s0)

# --- block 471 ---
addi $t0, $t0, 471
addi $t1, $t1, 472
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1884($s0)
lw   $t6, 1884($s0)

# --- block 472 ---
addi $t0, $t0, 472
addi $t1, $t1, 473
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1888($s0)
lw   $t6, 1888($s0)

# --- block 473 ---
addi $t0, $t0, 473
addi $t1, $t1, 474
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1892($s0)
lw   $t6, 1892($s0)

# --- block 474 ---
addi $t0, $t0, 474
addi $t1, $t1, 475
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1896($s0)
lw   $t6, 1896($s0)

# --- block 475 ---
addi $t0, $t0, 475
addi $t1, $t1, 476
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1900($s0)
lw   $t6, 1900($s0)

# --- block 476 ---
addi $t0, $t0, 476
addi $t1, $t1, 477
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1904($s0)
lw   $t6, 1904($s0)

# --- block 477 ---
addi $t0, $t0, 477
addi $t1, $t1, 478
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1908($s0)
lw   $t6, 1908($s0)

# --- block 478 ---
addi $t0, $t0, 478
addi $t1, $t1, 479
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1912($s0)
lw   $t6, 1912($s0)

# --- block 479 ---
addi $t0, $t0, 479
addi $t1, $t1, 480
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1916($s0)
lw   $t6, 1916($s0)

# --- block 480 ---
addi $t0, $t0, 480
addi $t1, $t1, 481
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1920($s0)
lw   $t6, 1920($s0)

# --- block 481 ---
addi $t0, $t0, 481
addi $t1, $t1, 482
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1924($s0)
lw   $t6, 1924($s0)

# --- block 482 ---
addi $t0, $t0, 482
addi $t1, $t1, 483
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1928($s0)
lw   $t6, 1928($s0)

# --- block 483 ---
addi $t0, $t0, 483
addi $t1, $t1, 484
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1932($s0)
lw   $t6, 1932($s0)

# --- block 484 ---
addi $t0, $t0, 484
addi $t1, $t1, 485
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1936($s0)
lw   $t6, 1936($s0)

# --- block 485 ---
addi $t0, $t0, 485
addi $t1, $t1, 486
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1940($s0)
lw   $t6, 1940($s0)

# --- block 486 ---
addi $t0, $t0, 486
addi $t1, $t1, 487
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1944($s0)
lw   $t6, 1944($s0)

# --- block 487 ---
addi $t0, $t0, 487
addi $t1, $t1, 488
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1948($s0)
lw   $t6, 1948($s0)

# --- block 488 ---
addi $t0, $t0, 488
addi $t1, $t1, 489
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1952($s0)
lw   $t6, 1952($s0)

# --- block 489 ---
addi $t0, $t0, 489
addi $t1, $t1, 490
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1956($s0)
lw   $t6, 1956($s0)

# --- block 490 ---
addi $t0, $t0, 490
addi $t1, $t1, 491
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1960($s0)
lw   $t6, 1960($s0)

# --- block 491 ---
addi $t0, $t0, 491
addi $t1, $t1, 492
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1964($s0)
lw   $t6, 1964($s0)

# --- block 492 ---
addi $t0, $t0, 492
addi $t1, $t1, 493
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1968($s0)
lw   $t6, 1968($s0)

# --- block 493 ---
addi $t0, $t0, 493
addi $t1, $t1, 494
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1972($s0)
lw   $t6, 1972($s0)

# --- block 494 ---
addi $t0, $t0, 494
addi $t1, $t1, 495
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1976($s0)
lw   $t6, 1976($s0)

# --- block 495 ---
addi $t0, $t0, 495
addi $t1, $t1, 496
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1980($s0)
lw   $t6, 1980($s0)

# --- block 496 ---
addi $t0, $t0, 496
addi $t1, $t1, 497
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1984($s0)
lw   $t6, 1984($s0)

# --- block 497 ---
addi $t0, $t0, 497
addi $t1, $t1, 498
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1988($s0)
lw   $t6, 1988($s0)

# --- block 498 ---
addi $t0, $t0, 498
addi $t1, $t1, 499
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1992($s0)
lw   $t6, 1992($s0)

# --- block 499 ---
addi $t0, $t0, 499
addi $t1, $t1, 500
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 1996($s0)
lw   $t6, 1996($s0)

# --- block 500 ---
addi $t0, $t0, 500
addi $t1, $t1, 501
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2000($s0)
lw   $t6, 2000($s0)

# --- block 501 ---
addi $t0, $t0, 501
addi $t1, $t1, 502
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2004($s0)
lw   $t6, 2004($s0)

# --- block 502 ---
addi $t0, $t0, 502
addi $t1, $t1, 503
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2008($s0)
lw   $t6, 2008($s0)

# --- block 503 ---
addi $t0, $t0, 503
addi $t1, $t1, 504
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2012($s0)
lw   $t6, 2012($s0)

# --- block 504 ---
addi $t0, $t0, 504
addi $t1, $t1, 505
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2016($s0)
lw   $t6, 2016($s0)

# --- block 505 ---
addi $t0, $t0, 505
addi $t1, $t1, 506
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2020($s0)
lw   $t6, 2020($s0)

# --- block 506 ---
addi $t0, $t0, 506
addi $t1, $t1, 507
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2024($s0)
lw   $t6, 2024($s0)

# --- block 507 ---
addi $t0, $t0, 507
addi $t1, $t1, 508
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2028($s0)
lw   $t6, 2028($s0)

# --- block 508 ---
addi $t0, $t0, 508
addi $t1, $t1, 509
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2032($s0)
lw   $t6, 2032($s0)

# --- block 509 ---
addi $t0, $t0, 509
addi $t1, $t1, 510
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2036($s0)
lw   $t6, 2036($s0)

# --- block 510 ---
addi $t0, $t0, 510
addi $t1, $t1, 511
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2040($s0)
lw   $t6, 2040($s0)

# --- block 511 ---
addi $t0, $t0, 511
addi $t1, $t1, 512
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2044($s0)
lw   $t6, 2044($s0)

# --- block 512 ---
addi $t0, $t0, 512
addi $t1, $t1, 513
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2048($s0)
lw   $t6, 2048($s0)

# --- block 513 ---
addi $t0, $t0, 513
addi $t1, $t1, 514
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2052($s0)
lw   $t6, 2052($s0)

# --- block 514 ---
addi $t0, $t0, 514
addi $t1, $t1, 515
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2056($s0)
lw   $t6, 2056($s0)

# --- block 515 ---
addi $t0, $t0, 515
addi $t1, $t1, 516
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2060($s0)
lw   $t6, 2060($s0)

# --- block 516 ---
addi $t0, $t0, 516
addi $t1, $t1, 517
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2064($s0)
lw   $t6, 2064($s0)

# --- block 517 ---
addi $t0, $t0, 517
addi $t1, $t1, 518
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2068($s0)
lw   $t6, 2068($s0)

# --- block 518 ---
addi $t0, $t0, 518
addi $t1, $t1, 519
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2072($s0)
lw   $t6, 2072($s0)

# --- block 519 ---
addi $t0, $t0, 519
addi $t1, $t1, 520
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2076($s0)
lw   $t6, 2076($s0)

# --- block 520 ---
addi $t0, $t0, 520
addi $t1, $t1, 521
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2080($s0)
lw   $t6, 2080($s0)

# --- block 521 ---
addi $t0, $t0, 521
addi $t1, $t1, 522
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2084($s0)
lw   $t6, 2084($s0)

# --- block 522 ---
addi $t0, $t0, 522
addi $t1, $t1, 523
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2088($s0)
lw   $t6, 2088($s0)

# --- block 523 ---
addi $t0, $t0, 523
addi $t1, $t1, 524
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2092($s0)
lw   $t6, 2092($s0)

# --- block 524 ---
addi $t0, $t0, 524
addi $t1, $t1, 525
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2096($s0)
lw   $t6, 2096($s0)

# --- block 525 ---
addi $t0, $t0, 525
addi $t1, $t1, 526
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2100($s0)
lw   $t6, 2100($s0)

# --- block 526 ---
addi $t0, $t0, 526
addi $t1, $t1, 527
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2104($s0)
lw   $t6, 2104($s0)

# --- block 527 ---
addi $t0, $t0, 527
addi $t1, $t1, 528
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2108($s0)
lw   $t6, 2108($s0)

# --- block 528 ---
addi $t0, $t0, 528
addi $t1, $t1, 529
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2112($s0)
lw   $t6, 2112($s0)

# --- block 529 ---
addi $t0, $t0, 529
addi $t1, $t1, 530
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2116($s0)
lw   $t6, 2116($s0)

# --- block 530 ---
addi $t0, $t0, 530
addi $t1, $t1, 531
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2120($s0)
lw   $t6, 2120($s0)

# --- block 531 ---
addi $t0, $t0, 531
addi $t1, $t1, 532
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2124($s0)
lw   $t6, 2124($s0)

# --- block 532 ---
addi $t0, $t0, 532
addi $t1, $t1, 533
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2128($s0)
lw   $t6, 2128($s0)

# --- block 533 ---
addi $t0, $t0, 533
addi $t1, $t1, 534
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2132($s0)
lw   $t6, 2132($s0)

# --- block 534 ---
addi $t0, $t0, 534
addi $t1, $t1, 535
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2136($s0)
lw   $t6, 2136($s0)

# --- block 535 ---
addi $t0, $t0, 535
addi $t1, $t1, 536
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2140($s0)
lw   $t6, 2140($s0)

# --- block 536 ---
addi $t0, $t0, 536
addi $t1, $t1, 537
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2144($s0)
lw   $t6, 2144($s0)

# --- block 537 ---
addi $t0, $t0, 537
addi $t1, $t1, 538
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2148($s0)
lw   $t6, 2148($s0)

# --- block 538 ---
addi $t0, $t0, 538
addi $t1, $t1, 539
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2152($s0)
lw   $t6, 2152($s0)

# --- block 539 ---
addi $t0, $t0, 539
addi $t1, $t1, 540
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2156($s0)
lw   $t6, 2156($s0)

# --- block 540 ---
addi $t0, $t0, 540
addi $t1, $t1, 541
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2160($s0)
lw   $t6, 2160($s0)

# --- block 541 ---
addi $t0, $t0, 541
addi $t1, $t1, 542
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2164($s0)
lw   $t6, 2164($s0)

# --- block 542 ---
addi $t0, $t0, 542
addi $t1, $t1, 543
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2168($s0)
lw   $t6, 2168($s0)

# --- block 543 ---
addi $t0, $t0, 543
addi $t1, $t1, 544
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2172($s0)
lw   $t6, 2172($s0)

# --- block 544 ---
addi $t0, $t0, 544
addi $t1, $t1, 545
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2176($s0)
lw   $t6, 2176($s0)

# --- block 545 ---
addi $t0, $t0, 545
addi $t1, $t1, 546
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2180($s0)
lw   $t6, 2180($s0)

# --- block 546 ---
addi $t0, $t0, 546
addi $t1, $t1, 547
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2184($s0)
lw   $t6, 2184($s0)

# --- block 547 ---
addi $t0, $t0, 547
addi $t1, $t1, 548
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2188($s0)
lw   $t6, 2188($s0)

# --- block 548 ---
addi $t0, $t0, 548
addi $t1, $t1, 549
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2192($s0)
lw   $t6, 2192($s0)

# --- block 549 ---
addi $t0, $t0, 549
addi $t1, $t1, 550
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2196($s0)
lw   $t6, 2196($s0)

# --- block 550 ---
addi $t0, $t0, 550
addi $t1, $t1, 551
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2200($s0)
lw   $t6, 2200($s0)

# --- block 551 ---
addi $t0, $t0, 551
addi $t1, $t1, 552
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2204($s0)
lw   $t6, 2204($s0)

# --- block 552 ---
addi $t0, $t0, 552
addi $t1, $t1, 553
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2208($s0)
lw   $t6, 2208($s0)

# --- block 553 ---
addi $t0, $t0, 553
addi $t1, $t1, 554
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2212($s0)
lw   $t6, 2212($s0)

# --- block 554 ---
addi $t0, $t0, 554
addi $t1, $t1, 555
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2216($s0)
lw   $t6, 2216($s0)

# --- block 555 ---
addi $t0, $t0, 555
addi $t1, $t1, 556
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2220($s0)
lw   $t6, 2220($s0)

# --- block 556 ---
addi $t0, $t0, 556
addi $t1, $t1, 557
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2224($s0)
lw   $t6, 2224($s0)

# --- block 557 ---
addi $t0, $t0, 557
addi $t1, $t1, 558
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2228($s0)
lw   $t6, 2228($s0)

# --- block 558 ---
addi $t0, $t0, 558
addi $t1, $t1, 559
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2232($s0)
lw   $t6, 2232($s0)

# --- block 559 ---
addi $t0, $t0, 559
addi $t1, $t1, 560
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2236($s0)
lw   $t6, 2236($s0)

# --- block 560 ---
addi $t0, $t0, 560
addi $t1, $t1, 561
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2240($s0)
lw   $t6, 2240($s0)

# --- block 561 ---
addi $t0, $t0, 561
addi $t1, $t1, 562
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2244($s0)
lw   $t6, 2244($s0)

# --- block 562 ---
addi $t0, $t0, 562
addi $t1, $t1, 563
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2248($s0)
lw   $t6, 2248($s0)

# --- block 563 ---
addi $t0, $t0, 563
addi $t1, $t1, 564
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2252($s0)
lw   $t6, 2252($s0)

# --- block 564 ---
addi $t0, $t0, 564
addi $t1, $t1, 565
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2256($s0)
lw   $t6, 2256($s0)

# --- block 565 ---
addi $t0, $t0, 565
addi $t1, $t1, 566
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2260($s0)
lw   $t6, 2260($s0)

# --- block 566 ---
addi $t0, $t0, 566
addi $t1, $t1, 567
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2264($s0)
lw   $t6, 2264($s0)

# --- block 567 ---
addi $t0, $t0, 567
addi $t1, $t1, 568
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2268($s0)
lw   $t6, 2268($s0)

# --- block 568 ---
addi $t0, $t0, 568
addi $t1, $t1, 569
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2272($s0)
lw   $t6, 2272($s0)

# --- block 569 ---
addi $t0, $t0, 569
addi $t1, $t1, 570
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2276($s0)
lw   $t6, 2276($s0)

# --- block 570 ---
addi $t0, $t0, 570
addi $t1, $t1, 571
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2280($s0)
lw   $t6, 2280($s0)

# --- block 571 ---
addi $t0, $t0, 571
addi $t1, $t1, 572
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2284($s0)
lw   $t6, 2284($s0)

# --- block 572 ---
addi $t0, $t0, 572
addi $t1, $t1, 573
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2288($s0)
lw   $t6, 2288($s0)

# --- block 573 ---
addi $t0, $t0, 573
addi $t1, $t1, 574
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2292($s0)
lw   $t6, 2292($s0)

# --- block 574 ---
addi $t0, $t0, 574
addi $t1, $t1, 575
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2296($s0)
lw   $t6, 2296($s0)

# --- block 575 ---
addi $t0, $t0, 575
addi $t1, $t1, 576
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2300($s0)
lw   $t6, 2300($s0)

# --- block 576 ---
addi $t0, $t0, 576
addi $t1, $t1, 577
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2304($s0)
lw   $t6, 2304($s0)

# --- block 577 ---
addi $t0, $t0, 577
addi $t1, $t1, 578
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2308($s0)
lw   $t6, 2308($s0)

# --- block 578 ---
addi $t0, $t0, 578
addi $t1, $t1, 579
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2312($s0)
lw   $t6, 2312($s0)

# --- block 579 ---
addi $t0, $t0, 579
addi $t1, $t1, 580
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2316($s0)
lw   $t6, 2316($s0)

# --- block 580 ---
addi $t0, $t0, 580
addi $t1, $t1, 581
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2320($s0)
lw   $t6, 2320($s0)

# --- block 581 ---
addi $t0, $t0, 581
addi $t1, $t1, 582
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2324($s0)
lw   $t6, 2324($s0)

# --- block 582 ---
addi $t0, $t0, 582
addi $t1, $t1, 583
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2328($s0)
lw   $t6, 2328($s0)

# --- block 583 ---
addi $t0, $t0, 583
addi $t1, $t1, 584
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2332($s0)
lw   $t6, 2332($s0)

# --- block 584 ---
addi $t0, $t0, 584
addi $t1, $t1, 585
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2336($s0)
lw   $t6, 2336($s0)

# --- block 585 ---
addi $t0, $t0, 585
addi $t1, $t1, 586
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2340($s0)
lw   $t6, 2340($s0)

# --- block 586 ---
addi $t0, $t0, 586
addi $t1, $t1, 587
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2344($s0)
lw   $t6, 2344($s0)

# --- block 587 ---
addi $t0, $t0, 587
addi $t1, $t1, 588
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2348($s0)
lw   $t6, 2348($s0)

# --- block 588 ---
addi $t0, $t0, 588
addi $t1, $t1, 589
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2352($s0)
lw   $t6, 2352($s0)

# --- block 589 ---
addi $t0, $t0, 589
addi $t1, $t1, 590
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2356($s0)
lw   $t6, 2356($s0)

# --- block 590 ---
addi $t0, $t0, 590
addi $t1, $t1, 591
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2360($s0)
lw   $t6, 2360($s0)

# --- block 591 ---
addi $t0, $t0, 591
addi $t1, $t1, 592
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2364($s0)
lw   $t6, 2364($s0)

# --- block 592 ---
addi $t0, $t0, 592
addi $t1, $t1, 593
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2368($s0)
lw   $t6, 2368($s0)

# --- block 593 ---
addi $t0, $t0, 593
addi $t1, $t1, 594
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2372($s0)
lw   $t6, 2372($s0)

# --- block 594 ---
addi $t0, $t0, 594
addi $t1, $t1, 595
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2376($s0)
lw   $t6, 2376($s0)

# --- block 595 ---
addi $t0, $t0, 595
addi $t1, $t1, 596
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2380($s0)
lw   $t6, 2380($s0)

# --- block 596 ---
addi $t0, $t0, 596
addi $t1, $t1, 597
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2384($s0)
lw   $t6, 2384($s0)

# --- block 597 ---
addi $t0, $t0, 597
addi $t1, $t1, 598
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2388($s0)
lw   $t6, 2388($s0)

# --- block 598 ---
addi $t0, $t0, 598
addi $t1, $t1, 599
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2392($s0)
lw   $t6, 2392($s0)

# --- block 599 ---
addi $t0, $t0, 599
addi $t1, $t1, 600
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2396($s0)
lw   $t6, 2396($s0)

# --- block 600 ---
addi $t0, $t0, 600
addi $t1, $t1, 601
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2400($s0)
lw   $t6, 2400($s0)

# --- block 601 ---
addi $t0, $t0, 601
addi $t1, $t1, 602
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2404($s0)
lw   $t6, 2404($s0)

# --- block 602 ---
addi $t0, $t0, 602
addi $t1, $t1, 603
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2408($s0)
lw   $t6, 2408($s0)

# --- block 603 ---
addi $t0, $t0, 603
addi $t1, $t1, 604
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2412($s0)
lw   $t6, 2412($s0)

# --- block 604 ---
addi $t0, $t0, 604
addi $t1, $t1, 605
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2416($s0)
lw   $t6, 2416($s0)

# --- block 605 ---
addi $t0, $t0, 605
addi $t1, $t1, 606
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2420($s0)
lw   $t6, 2420($s0)

# --- block 606 ---
addi $t0, $t0, 606
addi $t1, $t1, 607
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2424($s0)
lw   $t6, 2424($s0)

# --- block 607 ---
addi $t0, $t0, 607
addi $t1, $t1, 608
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2428($s0)
lw   $t6, 2428($s0)

# --- block 608 ---
addi $t0, $t0, 608
addi $t1, $t1, 609
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2432($s0)
lw   $t6, 2432($s0)

# --- block 609 ---
addi $t0, $t0, 609
addi $t1, $t1, 610
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2436($s0)
lw   $t6, 2436($s0)

# --- block 610 ---
addi $t0, $t0, 610
addi $t1, $t1, 611
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2440($s0)
lw   $t6, 2440($s0)

# --- block 611 ---
addi $t0, $t0, 611
addi $t1, $t1, 612
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2444($s0)
lw   $t6, 2444($s0)

# --- block 612 ---
addi $t0, $t0, 612
addi $t1, $t1, 613
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2448($s0)
lw   $t6, 2448($s0)

# --- block 613 ---
addi $t0, $t0, 613
addi $t1, $t1, 614
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2452($s0)
lw   $t6, 2452($s0)

# --- block 614 ---
addi $t0, $t0, 614
addi $t1, $t1, 615
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2456($s0)
lw   $t6, 2456($s0)

# --- block 615 ---
addi $t0, $t0, 615
addi $t1, $t1, 616
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2460($s0)
lw   $t6, 2460($s0)

# --- block 616 ---
addi $t0, $t0, 616
addi $t1, $t1, 617
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2464($s0)
lw   $t6, 2464($s0)

# --- block 617 ---
addi $t0, $t0, 617
addi $t1, $t1, 618
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2468($s0)
lw   $t6, 2468($s0)

# --- block 618 ---
addi $t0, $t0, 618
addi $t1, $t1, 619
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2472($s0)
lw   $t6, 2472($s0)

# --- block 619 ---
addi $t0, $t0, 619
addi $t1, $t1, 620
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2476($s0)
lw   $t6, 2476($s0)

# --- block 620 ---
addi $t0, $t0, 620
addi $t1, $t1, 621
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2480($s0)
lw   $t6, 2480($s0)

# --- block 621 ---
addi $t0, $t0, 621
addi $t1, $t1, 622
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2484($s0)
lw   $t6, 2484($s0)

# --- block 622 ---
addi $t0, $t0, 622
addi $t1, $t1, 623
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2488($s0)
lw   $t6, 2488($s0)

# --- block 623 ---
addi $t0, $t0, 623
addi $t1, $t1, 624
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2492($s0)
lw   $t6, 2492($s0)

# --- block 624 ---
addi $t0, $t0, 624
addi $t1, $t1, 625
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2496($s0)
lw   $t6, 2496($s0)

# --- block 625 ---
addi $t0, $t0, 625
addi $t1, $t1, 626
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2500($s0)
lw   $t6, 2500($s0)

# --- block 626 ---
addi $t0, $t0, 626
addi $t1, $t1, 627
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2504($s0)
lw   $t6, 2504($s0)

# --- block 627 ---
addi $t0, $t0, 627
addi $t1, $t1, 628
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2508($s0)
lw   $t6, 2508($s0)

# --- block 628 ---
addi $t0, $t0, 628
addi $t1, $t1, 629
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2512($s0)
lw   $t6, 2512($s0)

# --- block 629 ---
addi $t0, $t0, 629
addi $t1, $t1, 630
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2516($s0)
lw   $t6, 2516($s0)

# --- block 630 ---
addi $t0, $t0, 630
addi $t1, $t1, 631
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2520($s0)
lw   $t6, 2520($s0)

# --- block 631 ---
addi $t0, $t0, 631
addi $t1, $t1, 632
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2524($s0)
lw   $t6, 2524($s0)

# --- block 632 ---
addi $t0, $t0, 632
addi $t1, $t1, 633
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2528($s0)
lw   $t6, 2528($s0)

# --- block 633 ---
addi $t0, $t0, 633
addi $t1, $t1, 634
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2532($s0)
lw   $t6, 2532($s0)

# --- block 634 ---
addi $t0, $t0, 634
addi $t1, $t1, 635
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2536($s0)
lw   $t6, 2536($s0)

# --- block 635 ---
addi $t0, $t0, 635
addi $t1, $t1, 636
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2540($s0)
lw   $t6, 2540($s0)

# --- block 636 ---
addi $t0, $t0, 636
addi $t1, $t1, 637
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2544($s0)
lw   $t6, 2544($s0)

# --- block 637 ---
addi $t0, $t0, 637
addi $t1, $t1, 638
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2548($s0)
lw   $t6, 2548($s0)

# --- block 638 ---
addi $t0, $t0, 638
addi $t1, $t1, 639
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2552($s0)
lw   $t6, 2552($s0)

# --- block 639 ---
addi $t0, $t0, 639
addi $t1, $t1, 640
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2556($s0)
lw   $t6, 2556($s0)

# --- block 640 ---
addi $t0, $t0, 640
addi $t1, $t1, 641
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2560($s0)
lw   $t6, 2560($s0)

# --- block 641 ---
addi $t0, $t0, 641
addi $t1, $t1, 642
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2564($s0)
lw   $t6, 2564($s0)

# --- block 642 ---
addi $t0, $t0, 642
addi $t1, $t1, 643
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2568($s0)
lw   $t6, 2568($s0)

# --- block 643 ---
addi $t0, $t0, 643
addi $t1, $t1, 644
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2572($s0)
lw   $t6, 2572($s0)

# --- block 644 ---
addi $t0, $t0, 644
addi $t1, $t1, 645
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2576($s0)
lw   $t6, 2576($s0)

# --- block 645 ---
addi $t0, $t0, 645
addi $t1, $t1, 646
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2580($s0)
lw   $t6, 2580($s0)

# --- block 646 ---
addi $t0, $t0, 646
addi $t1, $t1, 647
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2584($s0)
lw   $t6, 2584($s0)

# --- block 647 ---
addi $t0, $t0, 647
addi $t1, $t1, 648
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2588($s0)
lw   $t6, 2588($s0)

# --- block 648 ---
addi $t0, $t0, 648
addi $t1, $t1, 649
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2592($s0)
lw   $t6, 2592($s0)

# --- block 649 ---
addi $t0, $t0, 649
addi $t1, $t1, 650
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2596($s0)
lw   $t6, 2596($s0)

# --- block 650 ---
addi $t0, $t0, 650
addi $t1, $t1, 651
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2600($s0)
lw   $t6, 2600($s0)

# --- block 651 ---
addi $t0, $t0, 651
addi $t1, $t1, 652
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2604($s0)
lw   $t6, 2604($s0)

# --- block 652 ---
addi $t0, $t0, 652
addi $t1, $t1, 653
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2608($s0)
lw   $t6, 2608($s0)

# --- block 653 ---
addi $t0, $t0, 653
addi $t1, $t1, 654
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2612($s0)
lw   $t6, 2612($s0)

# --- block 654 ---
addi $t0, $t0, 654
addi $t1, $t1, 655
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2616($s0)
lw   $t6, 2616($s0)

# --- block 655 ---
addi $t0, $t0, 655
addi $t1, $t1, 656
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2620($s0)
lw   $t6, 2620($s0)

# --- block 656 ---
addi $t0, $t0, 656
addi $t1, $t1, 657
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2624($s0)
lw   $t6, 2624($s0)

# --- block 657 ---
addi $t0, $t0, 657
addi $t1, $t1, 658
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2628($s0)
lw   $t6, 2628($s0)

# --- block 658 ---
addi $t0, $t0, 658
addi $t1, $t1, 659
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2632($s0)
lw   $t6, 2632($s0)

# --- block 659 ---
addi $t0, $t0, 659
addi $t1, $t1, 660
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2636($s0)
lw   $t6, 2636($s0)

# --- block 660 ---
addi $t0, $t0, 660
addi $t1, $t1, 661
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2640($s0)
lw   $t6, 2640($s0)

# --- block 661 ---
addi $t0, $t0, 661
addi $t1, $t1, 662
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2644($s0)
lw   $t6, 2644($s0)

# --- block 662 ---
addi $t0, $t0, 662
addi $t1, $t1, 663
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2648($s0)
lw   $t6, 2648($s0)

# --- block 663 ---
addi $t0, $t0, 663
addi $t1, $t1, 664
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2652($s0)
lw   $t6, 2652($s0)

# --- block 664 ---
addi $t0, $t0, 664
addi $t1, $t1, 665
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2656($s0)
lw   $t6, 2656($s0)

# --- block 665 ---
addi $t0, $t0, 665
addi $t1, $t1, 666
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2660($s0)
lw   $t6, 2660($s0)

# --- block 666 ---
addi $t0, $t0, 666
addi $t1, $t1, 667
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2664($s0)
lw   $t6, 2664($s0)

# --- block 667 ---
addi $t0, $t0, 667
addi $t1, $t1, 668
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2668($s0)
lw   $t6, 2668($s0)

# --- block 668 ---
addi $t0, $t0, 668
addi $t1, $t1, 669
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2672($s0)
lw   $t6, 2672($s0)

# --- block 669 ---
addi $t0, $t0, 669
addi $t1, $t1, 670
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2676($s0)
lw   $t6, 2676($s0)

# --- block 670 ---
addi $t0, $t0, 670
addi $t1, $t1, 671
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2680($s0)
lw   $t6, 2680($s0)

# --- block 671 ---
addi $t0, $t0, 671
addi $t1, $t1, 672
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2684($s0)
lw   $t6, 2684($s0)

# --- block 672 ---
addi $t0, $t0, 672
addi $t1, $t1, 673
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2688($s0)
lw   $t6, 2688($s0)

# --- block 673 ---
addi $t0, $t0, 673
addi $t1, $t1, 674
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2692($s0)
lw   $t6, 2692($s0)

# --- block 674 ---
addi $t0, $t0, 674
addi $t1, $t1, 675
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2696($s0)
lw   $t6, 2696($s0)

# --- block 675 ---
addi $t0, $t0, 675
addi $t1, $t1, 676
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2700($s0)
lw   $t6, 2700($s0)

# --- block 676 ---
addi $t0, $t0, 676
addi $t1, $t1, 677
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2704($s0)
lw   $t6, 2704($s0)

# --- block 677 ---
addi $t0, $t0, 677
addi $t1, $t1, 678
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2708($s0)
lw   $t6, 2708($s0)

# --- block 678 ---
addi $t0, $t0, 678
addi $t1, $t1, 679
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2712($s0)
lw   $t6, 2712($s0)

# --- block 679 ---
addi $t0, $t0, 679
addi $t1, $t1, 680
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2716($s0)
lw   $t6, 2716($s0)

# --- block 680 ---
addi $t0, $t0, 680
addi $t1, $t1, 681
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2720($s0)
lw   $t6, 2720($s0)

# --- block 681 ---
addi $t0, $t0, 681
addi $t1, $t1, 682
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2724($s0)
lw   $t6, 2724($s0)

# --- block 682 ---
addi $t0, $t0, 682
addi $t1, $t1, 683
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2728($s0)
lw   $t6, 2728($s0)

# --- block 683 ---
addi $t0, $t0, 683
addi $t1, $t1, 684
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2732($s0)
lw   $t6, 2732($s0)

# --- block 684 ---
addi $t0, $t0, 684
addi $t1, $t1, 685
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2736($s0)
lw   $t6, 2736($s0)

# --- block 685 ---
addi $t0, $t0, 685
addi $t1, $t1, 686
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2740($s0)
lw   $t6, 2740($s0)

# --- block 686 ---
addi $t0, $t0, 686
addi $t1, $t1, 687
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2744($s0)
lw   $t6, 2744($s0)

# --- block 687 ---
addi $t0, $t0, 687
addi $t1, $t1, 688
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2748($s0)
lw   $t6, 2748($s0)

# --- block 688 ---
addi $t0, $t0, 688
addi $t1, $t1, 689
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2752($s0)
lw   $t6, 2752($s0)

# --- block 689 ---
addi $t0, $t0, 689
addi $t1, $t1, 690
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2756($s0)
lw   $t6, 2756($s0)

# --- block 690 ---
addi $t0, $t0, 690
addi $t1, $t1, 691
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2760($s0)
lw   $t6, 2760($s0)

# --- block 691 ---
addi $t0, $t0, 691
addi $t1, $t1, 692
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2764($s0)
lw   $t6, 2764($s0)

# --- block 692 ---
addi $t0, $t0, 692
addi $t1, $t1, 693
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2768($s0)
lw   $t6, 2768($s0)

# --- block 693 ---
addi $t0, $t0, 693
addi $t1, $t1, 694
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2772($s0)
lw   $t6, 2772($s0)

# --- block 694 ---
addi $t0, $t0, 694
addi $t1, $t1, 695
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2776($s0)
lw   $t6, 2776($s0)

# --- block 695 ---
addi $t0, $t0, 695
addi $t1, $t1, 696
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2780($s0)
lw   $t6, 2780($s0)

# --- block 696 ---
addi $t0, $t0, 696
addi $t1, $t1, 697
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2784($s0)
lw   $t6, 2784($s0)

# --- block 697 ---
addi $t0, $t0, 697
addi $t1, $t1, 698
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2788($s0)
lw   $t6, 2788($s0)

# --- block 698 ---
addi $t0, $t0, 698
addi $t1, $t1, 699
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2792($s0)
lw   $t6, 2792($s0)

# --- block 699 ---
addi $t0, $t0, 699
addi $t1, $t1, 700
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2796($s0)
lw   $t6, 2796($s0)

# --- block 700 ---
addi $t0, $t0, 700
addi $t1, $t1, 701
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2800($s0)
lw   $t6, 2800($s0)

# --- block 701 ---
addi $t0, $t0, 701
addi $t1, $t1, 702
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2804($s0)
lw   $t6, 2804($s0)

# --- block 702 ---
addi $t0, $t0, 702
addi $t1, $t1, 703
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2808($s0)
lw   $t6, 2808($s0)

# --- block 703 ---
addi $t0, $t0, 703
addi $t1, $t1, 704
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2812($s0)
lw   $t6, 2812($s0)

# --- block 704 ---
addi $t0, $t0, 704
addi $t1, $t1, 705
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2816($s0)
lw   $t6, 2816($s0)

# --- block 705 ---
addi $t0, $t0, 705
addi $t1, $t1, 706
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2820($s0)
lw   $t6, 2820($s0)

# --- block 706 ---
addi $t0, $t0, 706
addi $t1, $t1, 707
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2824($s0)
lw   $t6, 2824($s0)

# --- block 707 ---
addi $t0, $t0, 707
addi $t1, $t1, 708
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2828($s0)
lw   $t6, 2828($s0)

# --- block 708 ---
addi $t0, $t0, 708
addi $t1, $t1, 709
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2832($s0)
lw   $t6, 2832($s0)

# --- block 709 ---
addi $t0, $t0, 709
addi $t1, $t1, 710
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2836($s0)
lw   $t6, 2836($s0)

# --- block 710 ---
addi $t0, $t0, 710
addi $t1, $t1, 711
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2840($s0)
lw   $t6, 2840($s0)

# --- block 711 ---
addi $t0, $t0, 711
addi $t1, $t1, 712
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2844($s0)
lw   $t6, 2844($s0)

# --- block 712 ---
addi $t0, $t0, 712
addi $t1, $t1, 713
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2848($s0)
lw   $t6, 2848($s0)

# --- block 713 ---
addi $t0, $t0, 713
addi $t1, $t1, 714
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2852($s0)
lw   $t6, 2852($s0)

# --- block 714 ---
addi $t0, $t0, 714
addi $t1, $t1, 715
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2856($s0)
lw   $t6, 2856($s0)

# --- block 715 ---
addi $t0, $t0, 715
addi $t1, $t1, 716
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2860($s0)
lw   $t6, 2860($s0)

# --- block 716 ---
addi $t0, $t0, 716
addi $t1, $t1, 717
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2864($s0)
lw   $t6, 2864($s0)

# --- block 717 ---
addi $t0, $t0, 717
addi $t1, $t1, 718
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2868($s0)
lw   $t6, 2868($s0)

# --- block 718 ---
addi $t0, $t0, 718
addi $t1, $t1, 719
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2872($s0)
lw   $t6, 2872($s0)

# --- block 719 ---
addi $t0, $t0, 719
addi $t1, $t1, 720
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2876($s0)
lw   $t6, 2876($s0)

# --- block 720 ---
addi $t0, $t0, 720
addi $t1, $t1, 721
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2880($s0)
lw   $t6, 2880($s0)

# --- block 721 ---
addi $t0, $t0, 721
addi $t1, $t1, 722
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2884($s0)
lw   $t6, 2884($s0)

# --- block 722 ---
addi $t0, $t0, 722
addi $t1, $t1, 723
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2888($s0)
lw   $t6, 2888($s0)

# --- block 723 ---
addi $t0, $t0, 723
addi $t1, $t1, 724
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2892($s0)
lw   $t6, 2892($s0)

# --- block 724 ---
addi $t0, $t0, 724
addi $t1, $t1, 725
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2896($s0)
lw   $t6, 2896($s0)

# --- block 725 ---
addi $t0, $t0, 725
addi $t1, $t1, 726
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2900($s0)
lw   $t6, 2900($s0)

# --- block 726 ---
addi $t0, $t0, 726
addi $t1, $t1, 727
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2904($s0)
lw   $t6, 2904($s0)

# --- block 727 ---
addi $t0, $t0, 727
addi $t1, $t1, 728
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2908($s0)
lw   $t6, 2908($s0)

# --- block 728 ---
addi $t0, $t0, 728
addi $t1, $t1, 729
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2912($s0)
lw   $t6, 2912($s0)

# --- block 729 ---
addi $t0, $t0, 729
addi $t1, $t1, 730
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2916($s0)
lw   $t6, 2916($s0)

# --- block 730 ---
addi $t0, $t0, 730
addi $t1, $t1, 731
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2920($s0)
lw   $t6, 2920($s0)

# --- block 731 ---
addi $t0, $t0, 731
addi $t1, $t1, 732
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2924($s0)
lw   $t6, 2924($s0)

# --- block 732 ---
addi $t0, $t0, 732
addi $t1, $t1, 733
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2928($s0)
lw   $t6, 2928($s0)

# --- block 733 ---
addi $t0, $t0, 733
addi $t1, $t1, 734
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2932($s0)
lw   $t6, 2932($s0)

# --- block 734 ---
addi $t0, $t0, 734
addi $t1, $t1, 735
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2936($s0)
lw   $t6, 2936($s0)

# --- block 735 ---
addi $t0, $t0, 735
addi $t1, $t1, 736
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2940($s0)
lw   $t6, 2940($s0)

# --- block 736 ---
addi $t0, $t0, 736
addi $t1, $t1, 737
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2944($s0)
lw   $t6, 2944($s0)

# --- block 737 ---
addi $t0, $t0, 737
addi $t1, $t1, 738
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2948($s0)
lw   $t6, 2948($s0)

# --- block 738 ---
addi $t0, $t0, 738
addi $t1, $t1, 739
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2952($s0)
lw   $t6, 2952($s0)

# --- block 739 ---
addi $t0, $t0, 739
addi $t1, $t1, 740
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2956($s0)
lw   $t6, 2956($s0)

# --- block 740 ---
addi $t0, $t0, 740
addi $t1, $t1, 741
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2960($s0)
lw   $t6, 2960($s0)

# --- block 741 ---
addi $t0, $t0, 741
addi $t1, $t1, 742
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2964($s0)
lw   $t6, 2964($s0)

# --- block 742 ---
addi $t0, $t0, 742
addi $t1, $t1, 743
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2968($s0)
lw   $t6, 2968($s0)

# --- block 743 ---
addi $t0, $t0, 743
addi $t1, $t1, 744
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2972($s0)
lw   $t6, 2972($s0)

# --- block 744 ---
addi $t0, $t0, 744
addi $t1, $t1, 745
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2976($s0)
lw   $t6, 2976($s0)

# --- block 745 ---
addi $t0, $t0, 745
addi $t1, $t1, 746
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2980($s0)
lw   $t6, 2980($s0)

# --- block 746 ---
addi $t0, $t0, 746
addi $t1, $t1, 747
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2984($s0)
lw   $t6, 2984($s0)

# --- block 747 ---
addi $t0, $t0, 747
addi $t1, $t1, 748
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2988($s0)
lw   $t6, 2988($s0)

# --- block 748 ---
addi $t0, $t0, 748
addi $t1, $t1, 749
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2992($s0)
lw   $t6, 2992($s0)

# --- block 749 ---
addi $t0, $t0, 749
addi $t1, $t1, 750
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 2996($s0)
lw   $t6, 2996($s0)

# --- block 750 ---
addi $t0, $t0, 750
addi $t1, $t1, 751
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3000($s0)
lw   $t6, 3000($s0)

# --- block 751 ---
addi $t0, $t0, 751
addi $t1, $t1, 752
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3004($s0)
lw   $t6, 3004($s0)

# --- block 752 ---
addi $t0, $t0, 752
addi $t1, $t1, 753
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3008($s0)
lw   $t6, 3008($s0)

# --- block 753 ---
addi $t0, $t0, 753
addi $t1, $t1, 754
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3012($s0)
lw   $t6, 3012($s0)

# --- block 754 ---
addi $t0, $t0, 754
addi $t1, $t1, 755
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3016($s0)
lw   $t6, 3016($s0)

# --- block 755 ---
addi $t0, $t0, 755
addi $t1, $t1, 756
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3020($s0)
lw   $t6, 3020($s0)

# --- block 756 ---
addi $t0, $t0, 756
addi $t1, $t1, 757
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3024($s0)
lw   $t6, 3024($s0)

# --- block 757 ---
addi $t0, $t0, 757
addi $t1, $t1, 758
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3028($s0)
lw   $t6, 3028($s0)

# --- block 758 ---
addi $t0, $t0, 758
addi $t1, $t1, 759
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3032($s0)
lw   $t6, 3032($s0)

# --- block 759 ---
addi $t0, $t0, 759
addi $t1, $t1, 760
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3036($s0)
lw   $t6, 3036($s0)

# --- block 760 ---
addi $t0, $t0, 760
addi $t1, $t1, 761
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3040($s0)
lw   $t6, 3040($s0)

# --- block 761 ---
addi $t0, $t0, 761
addi $t1, $t1, 762
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3044($s0)
lw   $t6, 3044($s0)

# --- block 762 ---
addi $t0, $t0, 762
addi $t1, $t1, 763
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3048($s0)
lw   $t6, 3048($s0)

# --- block 763 ---
addi $t0, $t0, 763
addi $t1, $t1, 764
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3052($s0)
lw   $t6, 3052($s0)

# --- block 764 ---
addi $t0, $t0, 764
addi $t1, $t1, 765
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3056($s0)
lw   $t6, 3056($s0)

# --- block 765 ---
addi $t0, $t0, 765
addi $t1, $t1, 766
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3060($s0)
lw   $t6, 3060($s0)

# --- block 766 ---
addi $t0, $t0, 766
addi $t1, $t1, 767
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3064($s0)
lw   $t6, 3064($s0)

# --- block 767 ---
addi $t0, $t0, 767
addi $t1, $t1, 768
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3068($s0)
lw   $t6, 3068($s0)

# --- block 768 ---
addi $t0, $t0, 768
addi $t1, $t1, 769
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3072($s0)
lw   $t6, 3072($s0)

# --- block 769 ---
addi $t0, $t0, 769
addi $t1, $t1, 770
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3076($s0)
lw   $t6, 3076($s0)

# --- block 770 ---
addi $t0, $t0, 770
addi $t1, $t1, 771
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3080($s0)
lw   $t6, 3080($s0)

# --- block 771 ---
addi $t0, $t0, 771
addi $t1, $t1, 772
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3084($s0)
lw   $t6, 3084($s0)

# --- block 772 ---
addi $t0, $t0, 772
addi $t1, $t1, 773
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3088($s0)
lw   $t6, 3088($s0)

# --- block 773 ---
addi $t0, $t0, 773
addi $t1, $t1, 774
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3092($s0)
lw   $t6, 3092($s0)

# --- block 774 ---
addi $t0, $t0, 774
addi $t1, $t1, 775
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3096($s0)
lw   $t6, 3096($s0)

# --- block 775 ---
addi $t0, $t0, 775
addi $t1, $t1, 776
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3100($s0)
lw   $t6, 3100($s0)

# --- block 776 ---
addi $t0, $t0, 776
addi $t1, $t1, 777
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3104($s0)
lw   $t6, 3104($s0)

# --- block 777 ---
addi $t0, $t0, 777
addi $t1, $t1, 778
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3108($s0)
lw   $t6, 3108($s0)

# --- block 778 ---
addi $t0, $t0, 778
addi $t1, $t1, 779
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3112($s0)
lw   $t6, 3112($s0)

# --- block 779 ---
addi $t0, $t0, 779
addi $t1, $t1, 780
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3116($s0)
lw   $t6, 3116($s0)

# --- block 780 ---
addi $t0, $t0, 780
addi $t1, $t1, 781
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3120($s0)
lw   $t6, 3120($s0)

# --- block 781 ---
addi $t0, $t0, 781
addi $t1, $t1, 782
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3124($s0)
lw   $t6, 3124($s0)

# --- block 782 ---
addi $t0, $t0, 782
addi $t1, $t1, 783
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3128($s0)
lw   $t6, 3128($s0)

# --- block 783 ---
addi $t0, $t0, 783
addi $t1, $t1, 784
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3132($s0)
lw   $t6, 3132($s0)

# --- block 784 ---
addi $t0, $t0, 784
addi $t1, $t1, 785
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3136($s0)
lw   $t6, 3136($s0)

# --- block 785 ---
addi $t0, $t0, 785
addi $t1, $t1, 786
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3140($s0)
lw   $t6, 3140($s0)

# --- block 786 ---
addi $t0, $t0, 786
addi $t1, $t1, 787
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3144($s0)
lw   $t6, 3144($s0)

# --- block 787 ---
addi $t0, $t0, 787
addi $t1, $t1, 788
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3148($s0)
lw   $t6, 3148($s0)

# --- block 788 ---
addi $t0, $t0, 788
addi $t1, $t1, 789
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3152($s0)
lw   $t6, 3152($s0)

# --- block 789 ---
addi $t0, $t0, 789
addi $t1, $t1, 790
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3156($s0)
lw   $t6, 3156($s0)

# --- block 790 ---
addi $t0, $t0, 790
addi $t1, $t1, 791
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3160($s0)
lw   $t6, 3160($s0)

# --- block 791 ---
addi $t0, $t0, 791
addi $t1, $t1, 792
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3164($s0)
lw   $t6, 3164($s0)

# --- block 792 ---
addi $t0, $t0, 792
addi $t1, $t1, 793
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3168($s0)
lw   $t6, 3168($s0)

# --- block 793 ---
addi $t0, $t0, 793
addi $t1, $t1, 794
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3172($s0)
lw   $t6, 3172($s0)

# --- block 794 ---
addi $t0, $t0, 794
addi $t1, $t1, 795
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3176($s0)
lw   $t6, 3176($s0)

# --- block 795 ---
addi $t0, $t0, 795
addi $t1, $t1, 796
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3180($s0)
lw   $t6, 3180($s0)

# --- block 796 ---
addi $t0, $t0, 796
addi $t1, $t1, 797
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3184($s0)
lw   $t6, 3184($s0)

# --- block 797 ---
addi $t0, $t0, 797
addi $t1, $t1, 798
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3188($s0)
lw   $t6, 3188($s0)

# --- block 798 ---
addi $t0, $t0, 798
addi $t1, $t1, 799
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3192($s0)
lw   $t6, 3192($s0)

# --- block 799 ---
addi $t0, $t0, 799
addi $t1, $t1, 800
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3196($s0)
lw   $t6, 3196($s0)

# --- block 800 ---
addi $t0, $t0, 800
addi $t1, $t1, 801
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3200($s0)
lw   $t6, 3200($s0)

# --- block 801 ---
addi $t0, $t0, 801
addi $t1, $t1, 802
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3204($s0)
lw   $t6, 3204($s0)

# --- block 802 ---
addi $t0, $t0, 802
addi $t1, $t1, 803
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3208($s0)
lw   $t6, 3208($s0)

# --- block 803 ---
addi $t0, $t0, 803
addi $t1, $t1, 804
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3212($s0)
lw   $t6, 3212($s0)

# --- block 804 ---
addi $t0, $t0, 804
addi $t1, $t1, 805
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3216($s0)
lw   $t6, 3216($s0)

# --- block 805 ---
addi $t0, $t0, 805
addi $t1, $t1, 806
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3220($s0)
lw   $t6, 3220($s0)

# --- block 806 ---
addi $t0, $t0, 806
addi $t1, $t1, 807
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3224($s0)
lw   $t6, 3224($s0)

# --- block 807 ---
addi $t0, $t0, 807
addi $t1, $t1, 808
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3228($s0)
lw   $t6, 3228($s0)

# --- block 808 ---
addi $t0, $t0, 808
addi $t1, $t1, 809
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3232($s0)
lw   $t6, 3232($s0)

# --- block 809 ---
addi $t0, $t0, 809
addi $t1, $t1, 810
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3236($s0)
lw   $t6, 3236($s0)

# --- block 810 ---
addi $t0, $t0, 810
addi $t1, $t1, 811
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3240($s0)
lw   $t6, 3240($s0)

# --- block 811 ---
addi $t0, $t0, 811
addi $t1, $t1, 812
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3244($s0)
lw   $t6, 3244($s0)

# --- block 812 ---
addi $t0, $t0, 812
addi $t1, $t1, 813
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3248($s0)
lw   $t6, 3248($s0)

# --- block 813 ---
addi $t0, $t0, 813
addi $t1, $t1, 814
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3252($s0)
lw   $t6, 3252($s0)

# --- block 814 ---
addi $t0, $t0, 814
addi $t1, $t1, 815
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3256($s0)
lw   $t6, 3256($s0)

# --- block 815 ---
addi $t0, $t0, 815
addi $t1, $t1, 816
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3260($s0)
lw   $t6, 3260($s0)

# --- block 816 ---
addi $t0, $t0, 816
addi $t1, $t1, 817
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3264($s0)
lw   $t6, 3264($s0)

# --- block 817 ---
addi $t0, $t0, 817
addi $t1, $t1, 818
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3268($s0)
lw   $t6, 3268($s0)

# --- block 818 ---
addi $t0, $t0, 818
addi $t1, $t1, 819
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3272($s0)
lw   $t6, 3272($s0)

# --- block 819 ---
addi $t0, $t0, 819
addi $t1, $t1, 820
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3276($s0)
lw   $t6, 3276($s0)

# --- block 820 ---
addi $t0, $t0, 820
addi $t1, $t1, 821
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3280($s0)
lw   $t6, 3280($s0)

# --- block 821 ---
addi $t0, $t0, 821
addi $t1, $t1, 822
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3284($s0)
lw   $t6, 3284($s0)

# --- block 822 ---
addi $t0, $t0, 822
addi $t1, $t1, 823
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3288($s0)
lw   $t6, 3288($s0)

# --- block 823 ---
addi $t0, $t0, 823
addi $t1, $t1, 824
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3292($s0)
lw   $t6, 3292($s0)

# --- block 824 ---
addi $t0, $t0, 824
addi $t1, $t1, 825
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3296($s0)
lw   $t6, 3296($s0)

# --- block 825 ---
addi $t0, $t0, 825
addi $t1, $t1, 826
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3300($s0)
lw   $t6, 3300($s0)

# --- block 826 ---
addi $t0, $t0, 826
addi $t1, $t1, 827
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3304($s0)
lw   $t6, 3304($s0)

# --- block 827 ---
addi $t0, $t0, 827
addi $t1, $t1, 828
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3308($s0)
lw   $t6, 3308($s0)

# --- block 828 ---
addi $t0, $t0, 828
addi $t1, $t1, 829
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3312($s0)
lw   $t6, 3312($s0)

# --- block 829 ---
addi $t0, $t0, 829
addi $t1, $t1, 830
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3316($s0)
lw   $t6, 3316($s0)

# --- block 830 ---
addi $t0, $t0, 830
addi $t1, $t1, 831
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3320($s0)
lw   $t6, 3320($s0)

# --- block 831 ---
addi $t0, $t0, 831
addi $t1, $t1, 832
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3324($s0)
lw   $t6, 3324($s0)

# --- block 832 ---
addi $t0, $t0, 832
addi $t1, $t1, 833
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3328($s0)
lw   $t6, 3328($s0)

# --- block 833 ---
addi $t0, $t0, 833
addi $t1, $t1, 834
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3332($s0)
lw   $t6, 3332($s0)

# --- block 834 ---
addi $t0, $t0, 834
addi $t1, $t1, 835
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3336($s0)
lw   $t6, 3336($s0)

# --- block 835 ---
addi $t0, $t0, 835
addi $t1, $t1, 836
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3340($s0)
lw   $t6, 3340($s0)

# --- block 836 ---
addi $t0, $t0, 836
addi $t1, $t1, 837
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3344($s0)
lw   $t6, 3344($s0)

# --- block 837 ---
addi $t0, $t0, 837
addi $t1, $t1, 838
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3348($s0)
lw   $t6, 3348($s0)

# --- block 838 ---
addi $t0, $t0, 838
addi $t1, $t1, 839
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3352($s0)
lw   $t6, 3352($s0)

# --- block 839 ---
addi $t0, $t0, 839
addi $t1, $t1, 840
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3356($s0)
lw   $t6, 3356($s0)

# --- block 840 ---
addi $t0, $t0, 840
addi $t1, $t1, 841
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3360($s0)
lw   $t6, 3360($s0)

# --- block 841 ---
addi $t0, $t0, 841
addi $t1, $t1, 842
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3364($s0)
lw   $t6, 3364($s0)

# --- block 842 ---
addi $t0, $t0, 842
addi $t1, $t1, 843
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3368($s0)
lw   $t6, 3368($s0)

# --- block 843 ---
addi $t0, $t0, 843
addi $t1, $t1, 844
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3372($s0)
lw   $t6, 3372($s0)

# --- block 844 ---
addi $t0, $t0, 844
addi $t1, $t1, 845
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3376($s0)
lw   $t6, 3376($s0)

# --- block 845 ---
addi $t0, $t0, 845
addi $t1, $t1, 846
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3380($s0)
lw   $t6, 3380($s0)

# --- block 846 ---
addi $t0, $t0, 846
addi $t1, $t1, 847
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3384($s0)
lw   $t6, 3384($s0)

# --- block 847 ---
addi $t0, $t0, 847
addi $t1, $t1, 848
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3388($s0)
lw   $t6, 3388($s0)

# --- block 848 ---
addi $t0, $t0, 848
addi $t1, $t1, 849
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3392($s0)
lw   $t6, 3392($s0)

# --- block 849 ---
addi $t0, $t0, 849
addi $t1, $t1, 850
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3396($s0)
lw   $t6, 3396($s0)

# --- block 850 ---
addi $t0, $t0, 850
addi $t1, $t1, 851
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3400($s0)
lw   $t6, 3400($s0)

# --- block 851 ---
addi $t0, $t0, 851
addi $t1, $t1, 852
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3404($s0)
lw   $t6, 3404($s0)

# --- block 852 ---
addi $t0, $t0, 852
addi $t1, $t1, 853
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3408($s0)
lw   $t6, 3408($s0)

# --- block 853 ---
addi $t0, $t0, 853
addi $t1, $t1, 854
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3412($s0)
lw   $t6, 3412($s0)

# --- block 854 ---
addi $t0, $t0, 854
addi $t1, $t1, 855
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3416($s0)
lw   $t6, 3416($s0)

# --- block 855 ---
addi $t0, $t0, 855
addi $t1, $t1, 856
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3420($s0)
lw   $t6, 3420($s0)

# --- block 856 ---
addi $t0, $t0, 856
addi $t1, $t1, 857
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3424($s0)
lw   $t6, 3424($s0)

# --- block 857 ---
addi $t0, $t0, 857
addi $t1, $t1, 858
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3428($s0)
lw   $t6, 3428($s0)

# --- block 858 ---
addi $t0, $t0, 858
addi $t1, $t1, 859
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3432($s0)
lw   $t6, 3432($s0)

# --- block 859 ---
addi $t0, $t0, 859
addi $t1, $t1, 860
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3436($s0)
lw   $t6, 3436($s0)

# --- block 860 ---
addi $t0, $t0, 860
addi $t1, $t1, 861
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3440($s0)
lw   $t6, 3440($s0)

# --- block 861 ---
addi $t0, $t0, 861
addi $t1, $t1, 862
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3444($s0)
lw   $t6, 3444($s0)

# --- block 862 ---
addi $t0, $t0, 862
addi $t1, $t1, 863
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3448($s0)
lw   $t6, 3448($s0)

# --- block 863 ---
addi $t0, $t0, 863
addi $t1, $t1, 864
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3452($s0)
lw   $t6, 3452($s0)

# --- block 864 ---
addi $t0, $t0, 864
addi $t1, $t1, 865
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3456($s0)
lw   $t6, 3456($s0)

# --- block 865 ---
addi $t0, $t0, 865
addi $t1, $t1, 866
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3460($s0)
lw   $t6, 3460($s0)

# --- block 866 ---
addi $t0, $t0, 866
addi $t1, $t1, 867
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3464($s0)
lw   $t6, 3464($s0)

# --- block 867 ---
addi $t0, $t0, 867
addi $t1, $t1, 868
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3468($s0)
lw   $t6, 3468($s0)

# --- block 868 ---
addi $t0, $t0, 868
addi $t1, $t1, 869
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3472($s0)
lw   $t6, 3472($s0)

# --- block 869 ---
addi $t0, $t0, 869
addi $t1, $t1, 870
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3476($s0)
lw   $t6, 3476($s0)

# --- block 870 ---
addi $t0, $t0, 870
addi $t1, $t1, 871
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3480($s0)
lw   $t6, 3480($s0)

# --- block 871 ---
addi $t0, $t0, 871
addi $t1, $t1, 872
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3484($s0)
lw   $t6, 3484($s0)

# --- block 872 ---
addi $t0, $t0, 872
addi $t1, $t1, 873
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3488($s0)
lw   $t6, 3488($s0)

# --- block 873 ---
addi $t0, $t0, 873
addi $t1, $t1, 874
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3492($s0)
lw   $t6, 3492($s0)

# --- block 874 ---
addi $t0, $t0, 874
addi $t1, $t1, 875
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3496($s0)
lw   $t6, 3496($s0)

# --- block 875 ---
addi $t0, $t0, 875
addi $t1, $t1, 876
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3500($s0)
lw   $t6, 3500($s0)

# --- block 876 ---
addi $t0, $t0, 876
addi $t1, $t1, 877
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3504($s0)
lw   $t6, 3504($s0)

# --- block 877 ---
addi $t0, $t0, 877
addi $t1, $t1, 878
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3508($s0)
lw   $t6, 3508($s0)

# --- block 878 ---
addi $t0, $t0, 878
addi $t1, $t1, 879
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3512($s0)
lw   $t6, 3512($s0)

# --- block 879 ---
addi $t0, $t0, 879
addi $t1, $t1, 880
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3516($s0)
lw   $t6, 3516($s0)

# --- block 880 ---
addi $t0, $t0, 880
addi $t1, $t1, 881
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3520($s0)
lw   $t6, 3520($s0)

# --- block 881 ---
addi $t0, $t0, 881
addi $t1, $t1, 882
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3524($s0)
lw   $t6, 3524($s0)

# --- block 882 ---
addi $t0, $t0, 882
addi $t1, $t1, 883
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3528($s0)
lw   $t6, 3528($s0)

# --- block 883 ---
addi $t0, $t0, 883
addi $t1, $t1, 884
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3532($s0)
lw   $t6, 3532($s0)

# --- block 884 ---
addi $t0, $t0, 884
addi $t1, $t1, 885
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3536($s0)
lw   $t6, 3536($s0)

# --- block 885 ---
addi $t0, $t0, 885
addi $t1, $t1, 886
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3540($s0)
lw   $t6, 3540($s0)

# --- block 886 ---
addi $t0, $t0, 886
addi $t1, $t1, 887
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3544($s0)
lw   $t6, 3544($s0)

# --- block 887 ---
addi $t0, $t0, 887
addi $t1, $t1, 888
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3548($s0)
lw   $t6, 3548($s0)

# --- block 888 ---
addi $t0, $t0, 888
addi $t1, $t1, 889
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3552($s0)
lw   $t6, 3552($s0)

# --- block 889 ---
addi $t0, $t0, 889
addi $t1, $t1, 890
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3556($s0)
lw   $t6, 3556($s0)

# --- block 890 ---
addi $t0, $t0, 890
addi $t1, $t1, 891
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3560($s0)
lw   $t6, 3560($s0)

# --- block 891 ---
addi $t0, $t0, 891
addi $t1, $t1, 892
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3564($s0)
lw   $t6, 3564($s0)

# --- block 892 ---
addi $t0, $t0, 892
addi $t1, $t1, 893
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3568($s0)
lw   $t6, 3568($s0)

# --- block 893 ---
addi $t0, $t0, 893
addi $t1, $t1, 894
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3572($s0)
lw   $t6, 3572($s0)

# --- block 894 ---
addi $t0, $t0, 894
addi $t1, $t1, 895
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3576($s0)
lw   $t6, 3576($s0)

# --- block 895 ---
addi $t0, $t0, 895
addi $t1, $t1, 896
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3580($s0)
lw   $t6, 3580($s0)

# --- block 896 ---
addi $t0, $t0, 896
addi $t1, $t1, 897
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3584($s0)
lw   $t6, 3584($s0)

# --- block 897 ---
addi $t0, $t0, 897
addi $t1, $t1, 898
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3588($s0)
lw   $t6, 3588($s0)

# --- block 898 ---
addi $t0, $t0, 898
addi $t1, $t1, 899
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3592($s0)
lw   $t6, 3592($s0)

# --- block 899 ---
addi $t0, $t0, 899
addi $t1, $t1, 900
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3596($s0)
lw   $t6, 3596($s0)

# --- block 900 ---
addi $t0, $t0, 900
addi $t1, $t1, 901
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3600($s0)
lw   $t6, 3600($s0)

# --- block 901 ---
addi $t0, $t0, 901
addi $t1, $t1, 902
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3604($s0)
lw   $t6, 3604($s0)

# --- block 902 ---
addi $t0, $t0, 902
addi $t1, $t1, 903
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3608($s0)
lw   $t6, 3608($s0)

# --- block 903 ---
addi $t0, $t0, 903
addi $t1, $t1, 904
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3612($s0)
lw   $t6, 3612($s0)

# --- block 904 ---
addi $t0, $t0, 904
addi $t1, $t1, 905
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3616($s0)
lw   $t6, 3616($s0)

# --- block 905 ---
addi $t0, $t0, 905
addi $t1, $t1, 906
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3620($s0)
lw   $t6, 3620($s0)

# --- block 906 ---
addi $t0, $t0, 906
addi $t1, $t1, 907
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3624($s0)
lw   $t6, 3624($s0)

# --- block 907 ---
addi $t0, $t0, 907
addi $t1, $t1, 908
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3628($s0)
lw   $t6, 3628($s0)

# --- block 908 ---
addi $t0, $t0, 908
addi $t1, $t1, 909
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3632($s0)
lw   $t6, 3632($s0)

# --- block 909 ---
addi $t0, $t0, 909
addi $t1, $t1, 910
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3636($s0)
lw   $t6, 3636($s0)

# --- block 910 ---
addi $t0, $t0, 910
addi $t1, $t1, 911
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3640($s0)
lw   $t6, 3640($s0)

# --- block 911 ---
addi $t0, $t0, 911
addi $t1, $t1, 912
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3644($s0)
lw   $t6, 3644($s0)

# --- block 912 ---
addi $t0, $t0, 912
addi $t1, $t1, 913
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3648($s0)
lw   $t6, 3648($s0)

# --- block 913 ---
addi $t0, $t0, 913
addi $t1, $t1, 914
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3652($s0)
lw   $t6, 3652($s0)

# --- block 914 ---
addi $t0, $t0, 914
addi $t1, $t1, 915
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3656($s0)
lw   $t6, 3656($s0)

# --- block 915 ---
addi $t0, $t0, 915
addi $t1, $t1, 916
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3660($s0)
lw   $t6, 3660($s0)

# --- block 916 ---
addi $t0, $t0, 916
addi $t1, $t1, 917
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3664($s0)
lw   $t6, 3664($s0)

# --- block 917 ---
addi $t0, $t0, 917
addi $t1, $t1, 918
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3668($s0)
lw   $t6, 3668($s0)

# --- block 918 ---
addi $t0, $t0, 918
addi $t1, $t1, 919
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3672($s0)
lw   $t6, 3672($s0)

# --- block 919 ---
addi $t0, $t0, 919
addi $t1, $t1, 920
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3676($s0)
lw   $t6, 3676($s0)

# --- block 920 ---
addi $t0, $t0, 920
addi $t1, $t1, 921
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3680($s0)
lw   $t6, 3680($s0)

# --- block 921 ---
addi $t0, $t0, 921
addi $t1, $t1, 922
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3684($s0)
lw   $t6, 3684($s0)

# --- block 922 ---
addi $t0, $t0, 922
addi $t1, $t1, 923
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3688($s0)
lw   $t6, 3688($s0)

# --- block 923 ---
addi $t0, $t0, 923
addi $t1, $t1, 924
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3692($s0)
lw   $t6, 3692($s0)

# --- block 924 ---
addi $t0, $t0, 924
addi $t1, $t1, 925
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3696($s0)
lw   $t6, 3696($s0)

# --- block 925 ---
addi $t0, $t0, 925
addi $t1, $t1, 926
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3700($s0)
lw   $t6, 3700($s0)

# --- block 926 ---
addi $t0, $t0, 926
addi $t1, $t1, 927
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3704($s0)
lw   $t6, 3704($s0)

# --- block 927 ---
addi $t0, $t0, 927
addi $t1, $t1, 928
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3708($s0)
lw   $t6, 3708($s0)

# --- block 928 ---
addi $t0, $t0, 928
addi $t1, $t1, 929
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3712($s0)
lw   $t6, 3712($s0)

# --- block 929 ---
addi $t0, $t0, 929
addi $t1, $t1, 930
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3716($s0)
lw   $t6, 3716($s0)

# --- block 930 ---
addi $t0, $t0, 930
addi $t1, $t1, 931
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3720($s0)
lw   $t6, 3720($s0)

# --- block 931 ---
addi $t0, $t0, 931
addi $t1, $t1, 932
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3724($s0)
lw   $t6, 3724($s0)

# --- block 932 ---
addi $t0, $t0, 932
addi $t1, $t1, 933
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3728($s0)
lw   $t6, 3728($s0)

# --- block 933 ---
addi $t0, $t0, 933
addi $t1, $t1, 934
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3732($s0)
lw   $t6, 3732($s0)

# --- block 934 ---
addi $t0, $t0, 934
addi $t1, $t1, 935
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3736($s0)
lw   $t6, 3736($s0)

# --- block 935 ---
addi $t0, $t0, 935
addi $t1, $t1, 936
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3740($s0)
lw   $t6, 3740($s0)

# --- block 936 ---
addi $t0, $t0, 936
addi $t1, $t1, 937
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3744($s0)
lw   $t6, 3744($s0)

# --- block 937 ---
addi $t0, $t0, 937
addi $t1, $t1, 938
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3748($s0)
lw   $t6, 3748($s0)

# --- block 938 ---
addi $t0, $t0, 938
addi $t1, $t1, 939
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3752($s0)
lw   $t6, 3752($s0)

# --- block 939 ---
addi $t0, $t0, 939
addi $t1, $t1, 940
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3756($s0)
lw   $t6, 3756($s0)

# --- block 940 ---
addi $t0, $t0, 940
addi $t1, $t1, 941
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3760($s0)
lw   $t6, 3760($s0)

# --- block 941 ---
addi $t0, $t0, 941
addi $t1, $t1, 942
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3764($s0)
lw   $t6, 3764($s0)

# --- block 942 ---
addi $t0, $t0, 942
addi $t1, $t1, 943
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3768($s0)
lw   $t6, 3768($s0)

# --- block 943 ---
addi $t0, $t0, 943
addi $t1, $t1, 944
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3772($s0)
lw   $t6, 3772($s0)

# --- block 944 ---
addi $t0, $t0, 944
addi $t1, $t1, 945
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3776($s0)
lw   $t6, 3776($s0)

# --- block 945 ---
addi $t0, $t0, 945
addi $t1, $t1, 946
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3780($s0)
lw   $t6, 3780($s0)

# --- block 946 ---
addi $t0, $t0, 946
addi $t1, $t1, 947
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3784($s0)
lw   $t6, 3784($s0)

# --- block 947 ---
addi $t0, $t0, 947
addi $t1, $t1, 948
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3788($s0)
lw   $t6, 3788($s0)

# --- block 948 ---
addi $t0, $t0, 948
addi $t1, $t1, 949
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3792($s0)
lw   $t6, 3792($s0)

# --- block 949 ---
addi $t0, $t0, 949
addi $t1, $t1, 950
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3796($s0)
lw   $t6, 3796($s0)

# --- block 950 ---
addi $t0, $t0, 950
addi $t1, $t1, 951
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3800($s0)
lw   $t6, 3800($s0)

# --- block 951 ---
addi $t0, $t0, 951
addi $t1, $t1, 952
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3804($s0)
lw   $t6, 3804($s0)

# --- block 952 ---
addi $t0, $t0, 952
addi $t1, $t1, 953
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3808($s0)
lw   $t6, 3808($s0)

# --- block 953 ---
addi $t0, $t0, 953
addi $t1, $t1, 954
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3812($s0)
lw   $t6, 3812($s0)

# --- block 954 ---
addi $t0, $t0, 954
addi $t1, $t1, 955
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3816($s0)
lw   $t6, 3816($s0)

# --- block 955 ---
addi $t0, $t0, 955
addi $t1, $t1, 956
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3820($s0)
lw   $t6, 3820($s0)

# --- block 956 ---
addi $t0, $t0, 956
addi $t1, $t1, 957
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3824($s0)
lw   $t6, 3824($s0)

# --- block 957 ---
addi $t0, $t0, 957
addi $t1, $t1, 958
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3828($s0)
lw   $t6, 3828($s0)

# --- block 958 ---
addi $t0, $t0, 958
addi $t1, $t1, 959
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3832($s0)
lw   $t6, 3832($s0)

# --- block 959 ---
addi $t0, $t0, 959
addi $t1, $t1, 960
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3836($s0)
lw   $t6, 3836($s0)

# --- block 960 ---
addi $t0, $t0, 960
addi $t1, $t1, 961
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3840($s0)
lw   $t6, 3840($s0)

# --- block 961 ---
addi $t0, $t0, 961
addi $t1, $t1, 962
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3844($s0)
lw   $t6, 3844($s0)

# --- block 962 ---
addi $t0, $t0, 962
addi $t1, $t1, 963
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3848($s0)
lw   $t6, 3848($s0)

# --- block 963 ---
addi $t0, $t0, 963
addi $t1, $t1, 964
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3852($s0)
lw   $t6, 3852($s0)

# --- block 964 ---
addi $t0, $t0, 964
addi $t1, $t1, 965
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3856($s0)
lw   $t6, 3856($s0)

# --- block 965 ---
addi $t0, $t0, 965
addi $t1, $t1, 966
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3860($s0)
lw   $t6, 3860($s0)

# --- block 966 ---
addi $t0, $t0, 966
addi $t1, $t1, 967
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3864($s0)
lw   $t6, 3864($s0)

# --- block 967 ---
addi $t0, $t0, 967
addi $t1, $t1, 968
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3868($s0)
lw   $t6, 3868($s0)

# --- block 968 ---
addi $t0, $t0, 968
addi $t1, $t1, 969
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3872($s0)
lw   $t6, 3872($s0)

# --- block 969 ---
addi $t0, $t0, 969
addi $t1, $t1, 970
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3876($s0)
lw   $t6, 3876($s0)

# --- block 970 ---
addi $t0, $t0, 970
addi $t1, $t1, 971
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3880($s0)
lw   $t6, 3880($s0)

# --- block 971 ---
addi $t0, $t0, 971
addi $t1, $t1, 972
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3884($s0)
lw   $t6, 3884($s0)

# --- block 972 ---
addi $t0, $t0, 972
addi $t1, $t1, 973
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3888($s0)
lw   $t6, 3888($s0)

# --- block 973 ---
addi $t0, $t0, 973
addi $t1, $t1, 974
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3892($s0)
lw   $t6, 3892($s0)

# --- block 974 ---
addi $t0, $t0, 974
addi $t1, $t1, 975
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3896($s0)
lw   $t6, 3896($s0)

# --- block 975 ---
addi $t0, $t0, 975
addi $t1, $t1, 976
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3900($s0)
lw   $t6, 3900($s0)

# --- block 976 ---
addi $t0, $t0, 976
addi $t1, $t1, 977
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3904($s0)
lw   $t6, 3904($s0)

# --- block 977 ---
addi $t0, $t0, 977
addi $t1, $t1, 978
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3908($s0)
lw   $t6, 3908($s0)

# --- block 978 ---
addi $t0, $t0, 978
addi $t1, $t1, 979
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3912($s0)
lw   $t6, 3912($s0)

# --- block 979 ---
addi $t0, $t0, 979
addi $t1, $t1, 980
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3916($s0)
lw   $t6, 3916($s0)

# --- block 980 ---
addi $t0, $t0, 980
addi $t1, $t1, 981
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3920($s0)
lw   $t6, 3920($s0)

# --- block 981 ---
addi $t0, $t0, 981
addi $t1, $t1, 982
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3924($s0)
lw   $t6, 3924($s0)

# --- block 982 ---
addi $t0, $t0, 982
addi $t1, $t1, 983
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3928($s0)
lw   $t6, 3928($s0)

# --- block 983 ---
addi $t0, $t0, 983
addi $t1, $t1, 984
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3932($s0)
lw   $t6, 3932($s0)

# --- block 984 ---
addi $t0, $t0, 984
addi $t1, $t1, 985
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3936($s0)
lw   $t6, 3936($s0)

# --- block 985 ---
addi $t0, $t0, 985
addi $t1, $t1, 986
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3940($s0)
lw   $t6, 3940($s0)

# --- block 986 ---
addi $t0, $t0, 986
addi $t1, $t1, 987
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3944($s0)
lw   $t6, 3944($s0)

# --- block 987 ---
addi $t0, $t0, 987
addi $t1, $t1, 988
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3948($s0)
lw   $t6, 3948($s0)

# --- block 988 ---
addi $t0, $t0, 988
addi $t1, $t1, 989
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3952($s0)
lw   $t6, 3952($s0)

# --- block 989 ---
addi $t0, $t0, 989
addi $t1, $t1, 990
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3956($s0)
lw   $t6, 3956($s0)

# --- block 990 ---
addi $t0, $t0, 990
addi $t1, $t1, 991
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3960($s0)
lw   $t6, 3960($s0)

# --- block 991 ---
addi $t0, $t0, 991
addi $t1, $t1, 992
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3964($s0)
lw   $t6, 3964($s0)

# --- block 992 ---
addi $t0, $t0, 992
addi $t1, $t1, 993
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3968($s0)
lw   $t6, 3968($s0)

# --- block 993 ---
addi $t0, $t0, 993
addi $t1, $t1, 994
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3972($s0)
lw   $t6, 3972($s0)

# --- block 994 ---
addi $t0, $t0, 994
addi $t1, $t1, 995
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3976($s0)
lw   $t6, 3976($s0)

# --- block 995 ---
addi $t0, $t0, 995
addi $t1, $t1, 996
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3980($s0)
lw   $t6, 3980($s0)

# --- block 996 ---
addi $t0, $t0, 996
addi $t1, $t1, 997
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3984($s0)
lw   $t6, 3984($s0)

# --- block 997 ---
addi $t0, $t0, 997
addi $t1, $t1, 998
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3988($s0)
lw   $t6, 3988($s0)

# --- block 998 ---
addi $t0, $t0, 998
addi $t1, $t1, 999
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3992($s0)
lw   $t6, 3992($s0)

# --- block 999 ---
addi $t0, $t0, 999
addi $t1, $t1, 1000
add  $t2, $t0, $t1
sub  $t3, $t1, $t0
xor  $t4, $t2, $t3
sll  $t5, $t4, 2
sw   $t5, 3996($s0)
lw   $t6, 3996($s0)

li $v0, 10
syscall
