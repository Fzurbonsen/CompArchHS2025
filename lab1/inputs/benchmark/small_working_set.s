# small_working_set.s
.data
array: .space 256          # 256 bytes (~fits in L1)

.text
.globl main
main:
    la   $t0, array
    li   $t1, 64           # 64 elements
    li   $t2, 1000         # repeat many times

outer:
    li   $t3, 0
inner:
    lw   $t4, 0($t0)
    addi $t4, $t4, 1
    sw   $t4, 0($t0)
    addi $t0, $t0, 4
    addi $t3, $t3, 1
    blt  $t3, $t1, inner

    la   $t0, array
    addi $t2, $t2, -1
    bgtz $t2, outer

# --- Exit cleanly ---
li   $v0, 10
syscall
