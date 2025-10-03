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
    cache_sizes = [2**i for i in range(2, max_cache_size_power+1)]
    block_sizes = [2**i for i in range(1, 9)]
    assocs = [2**i for i in range(0, 5)]

    for size, block, assoc in product(cache_sizes, block_sizes, assocs):
        if block * assoc <= size:
            configs.append((size, block, assoc))

    return configs

def calculate_parameters(size, block, assoc):
    num_ways = assoc
    num_sets = size // (block * assoc)

    block_offset_bits = int(math.log2(block))
    set_index_bits = int(math.log2(num_sets))

    set_index_shift = block_offset_bits
    tag_shift = block_offset_bits + set_index_bits
    set_index_mask = num_sets - 1
    
    return [num_sets, num_ways, tag_shift, set_index_shift, set_index_mask]

def main():
    all_inputs = glob.glob("inputs/*/*.x")

    parser = argparse.ArgumentParser()
    parser.add_argument("inputs", nargs="*", default=all_inputs)
    parser = parser.parse_args()

    # generate paramters for parameter sweep
    parameters = []
    for config in generate_parameters(2):
        parameters.append(calculate_parameters(config[0], config[1], config[2]))

    total_parameters = []

    for param_IC in parameters:
        for param_DC in parameters:
            total_parameters.append(param_IC + param_DC)

    print(total_parameters)


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


    for param in total_parameters:
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

            with open(csv_file, "a") as f:
                f.write(f"{param[0]},{param[1]},{param[2]},{param[3]},{param[4]},{param[5]},{ipc},{cycles}\n")



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

