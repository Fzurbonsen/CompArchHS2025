# generate_mips_dcache.py
# Generate a large MIPS program that stresses the data cache

num_accesses = 1000  # increase for more lines

with open("dcache_filler.s", "w") as f:
    f.write(".data\narray: .space 65536\n.text\n.globl main\nmain:\n")
    f.write("la $s0, array\n")

    for i in range(num_accesses):
        offset = (i * 4) % 65536
        f.write(f"addi $t0, $zero, {i}\n")
        f.write(f"sw $t0, {offset}($s0)\n")
        f.write(f"lw $t1, {offset}($s0)\n")
        f.write(f"add $t2, $t1, $t0\n\n")

    f.write("li $v0, 10\nsyscall\n")
