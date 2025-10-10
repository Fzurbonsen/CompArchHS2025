# generate_mips_fill.py
# This script generates a long sequence of MIPS instructions
# to fill the instruction cache

num_blocks = 1000  # increase this for more code

with open("icache_filler.s", "w") as f:
    f.write(".data\narray: .space 4000\n.text\n.globl main\nmain:\n")
    f.write("la $s0, array\n")

    for i in range(num_blocks):
        f.write(f"# --- block {i} ---\n")
        f.write(f"addi $t0, $t0, {i}\n")
        f.write(f"addi $t1, $t1, {i+1}\n")
        f.write(f"add  $t2, $t0, $t1\n")
        f.write(f"sub  $t3, $t1, $t0\n")
        f.write(f"xor  $t4, $t2, $t3\n")
        f.write(f"sll  $t5, $t4, 2\n")
        f.write(f"sw   $t5, {i*4 % 4000}($s0)\n")
        f.write(f"lw   $t6, {i*4 % 4000}($s0)\n\n")

    f.write("li $v0, 10\nsyscall\n")