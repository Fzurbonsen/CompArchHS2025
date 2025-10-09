#!/usr/bin/python3

# Chris Fallin, 2012
# Yoongu Kim, 2013
# Juan Gomez Luna, 2017
# Minesh Patel, 2020

import sys, os, subprocess, re, glob, argparse, math, itertools
from itertools import product

ref = "./basesim"
sim = "./sim"

bold="\033[1m"
green="\033[0;32m"
red="\033[0;31m"
normal="\033[0m"

def generate_parameters(max_cache_size_power):
    configs = []
    cache_sizes = [2**i for i in range(10, max_cache_size_power+1)]
    block_sizes = [2**i for i in range(1, 10+1)]
    assocs = [2**i for i in range(0, 10+1)]

    for size, block, assoc in product(cache_sizes, block_sizes, assocs):
        if block * assoc <= size:
            configs.append((size, block, assoc))

    return configs


def set_parameters():
    """
    Returns dict with several lists of cache configurations.
    Each config uses the format: [cache_size_bytes, block_size_bytes, associativity]
    - cache sizes: typical L1/L2/L3 ranges (bytes)
    - block sizes: 16..256 bytes
    - associativities: 1 (direct), 2, 4, 8, 16 (16 used to approximate high assoc)
    Use the desired list (baseline, full_cartesian, sweep_*).
    """
    # Useful discrete options (bytes)
    cache_sizes = [1*1024, 2*1024, 4*1024, 8*1024, 16*1024, 32*1024, 64*1024, 128*1024]
    block_sizes = [16, 32, 64, 128, 256]
    associativities = [1, 2, 4, 8, 16]

    # Baseline (common L1-like)
    baseline = [[32*1024, 64, 4]]  # 32KB, 64B block, 4-way

    # Full cartesian product (be careful: 8*5*5 = 200 runs)
    full_cartesian = []
    for c in cache_sizes:
        for b in block_sizes:
            for a in associativities:
                if b*a > c:
                    continue
                full_cartesian.append([c, b, a])

    # Targeted sweeps (change one parameter at a time)
    # 1) Sweep cache size while holding block=64, assoc=4
    sweep_cache_size = [[c, 64, 4] for c in cache_sizes]

    # 2) Sweep block size while holding cache=32KB, assoc=4
    sweep_block_size = [[32*1024, b, 4] for b in block_sizes]

    # 3) Sweep associativity while holding cache=32KB, block=64
    sweep_assoc = [[32*1024, 64, a] for a in associativities]

    # 4) Combine important "L1 vs L2 vs L3" style points for fewer runs
    small_points = [
        [16*1024, 64, 2],
        [32*1024, 64, 4],
        [64*1024, 64, 4],
        [256*1024, 64, 8],
        [512*1024, 64, 8],
        [1*1024*1024, 64, 16],
        [2*1024*1024, 64, 16],
    ]

    # Return everything; pick what you need in the harness
    return {
        "baseline": baseline,
        "full_cartesian": full_cartesian,
        "sweep_cache_size": sweep_cache_size,
        "sweep_block_size": sweep_block_size,
        "sweep_associativity": sweep_assoc,
        "small_points": small_points,
    }


def calculate_parameters(size, block, assoc):
    num_ways = assoc
    num_sets = size // (block * assoc)

    block_offset_bits = int(math.log2(block))
    set_index_bits = int(math.log2(num_sets))

    set_index_shift = block_offset_bits
    tag_shift = block_offset_bits + set_index_bits
    set_index_mask = num_sets - 1
    
    return [num_sets, num_ways, tag_shift, set_index_shift, set_index_mask]


def regain_parameters(num_sets, num_ways, tag_shift, set_index_shift, set_index_mask):
    assoc = num_ways
    block = 2 ** set_index_shift
    num_sets = set_index_mask + 1
    size = num_sets * block * assoc
    return [size, block, assoc]


def main():
    all_inputs = glob.glob("inputs/*/*.x")

    parser = argparse.ArgumentParser()
    parser.add_argument("inputs", nargs="*", default=all_inputs)
    parser = parser.parse_args()

    # generate paramters for parameter sweep
    parameters = []
    # for config in generate_parameters(20):
        # parameters.append(calculate_parameters(config[0], config[1], config[2]))
    
    for config in set_parameters()["full_cartesian"]:
        parameters.append(calculate_parameters(config[0], config[1], config[2]))

    total_parameters = []

    for param_IC in parameters:
        for param_DC in parameters:
            total_parameters.append(param_IC + param_DC)

    for param in total_parameters:
        print(param)
    # print(total_parameters)

    for i in parser.inputs:
        if not os.path.exists(i):
            print(red + "ERROR -- input file (*.x) not found: " + i + normal)
            continue

        os.makedirs("data/csv", exist_ok=True)

        # Construct CSV file path
        base_name = os.path.splitext(os.path.basename(i))[0]  # remove folder and extension
        csv_file = os.path.join("data/csv", base_name + ".csv")

        # Create an empty CSV file (or overwrite if it exists)
        with open(csv_file, "w") as f:
            f.write("IC_size,IC_block,IC_assoc,DC_size,DC_block,DC_assoc,IPC,Cycles\n")  # example headers, replace as needed

    j = int(0)

    for param in total_parameters:
        j = int(j + 1)
        progress = 100 * j / len(total_parameters)
        print(f"{progress:.4f}%")
        for i in parser.inputs:
            if not os.path.exists(i):
                print(red + "ERROR -- input file (*.x) not found: " + i + normal)
                continue

            sim_out = run(i, param)
            # print(i)
            # print(sim_out)

            base_name = os.path.splitext(os.path.basename(i))[0]
            lines = sim_out.strip().split("\n")
            cycles = None
            ipc = None
            for line in lines:
                if line.startswith("Cycles:"):
                    cycles = line.split()[1]
                elif line.startswith("IPC:"):
                    ipc = line.split()[1]

            csv_file = os.path.join("data/csv", base_name + ".csv")

            IC_params = regain_parameters(param[0], param[1], param[2], param[3], param[4])
            DC_params = regain_parameters(param[5], param[6], param[7], param[8], param[9])

            with open(csv_file, "a") as f:
                f.write(f"{IC_params[0]},{IC_params[1]},{IC_params[2]},{DC_params[0]},{DC_params[1]},{DC_params[2]},{ipc},{cycles}\n")



def run(i, parameters):
    global sim

    simproc = subprocess.Popen([sim, i], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    cmds = b""
    cmdfile = os.path.splitext(i)[0] + ".cmd"
    if os.path.exists(cmdfile):
        cmds += open(cmdfile).read().encode('utf-8')


    
    inputs = "\n".join([str(x) for x in parameters]) + "\n"
    cmds += b"go\n"
    cmds += inputs.encode('utf-8')
    cmds += b"quit\n"

    s, s_err = simproc.communicate(input=cmds)

    if s_err:
        print("\n--- ./sim stderr ---")
        print(s_err.decode('utf-8'))

    return filter_stats(filter_stats(s.decode('utf-8')))


def filter_stats(out):
    lines = out.split("\n")
    regex = re.compile("^(HI:)|(LO:)|(R\d+:)|(PC:)|(Cycles:)|(Fetched\w+:)|(Retired\w+:)|(IPC:)|(Flushes:).*$")
    out = []
    for l in lines:
        if regex.match(l):
          out.append(l)

    return "\n".join(out)


if __name__ == "__main__":
    main()

