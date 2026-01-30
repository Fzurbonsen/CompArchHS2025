# 
# benchmark.py
# This file is used to run benchmarks on the simmulator.
# Author: Frederic zur Bonsen
# E-Mail: <fzurbonsen@ethz.ch>
# 

import subprocess
import re
import matplotlib.pyplot as plt
import csv

# function to compile and run an instance
def compile_and_run(nr_dpus, nr_tasklets, transfer, do_print, input_size, variable_type, interactor_type):

    # make clean
    process_make_clean = subprocess.Popen(
        ["make", "clean"],
        stdin=subprocess.PIPE, 
        stdout=subprocess.PIPE, 
        stderr=subprocess.PIPE,
        text=True
    )
    # get output
    stdout, stderr = process_make_clean.communicate()

    # compile
    process_compile = subprocess.Popen(
        ["make", f"NR_DPUS={nr_dpus}", f"NR_TASKLETS={nr_tasklets}", f"TRANSFER={transfer}", f"PRINT={do_print}", f"TYPE={variable_type}", f"INTERACTOR={interactor_type}"],
        stdin=subprocess.PIPE, 
        stdout=subprocess.PIPE, 
        stderr=subprocess.PIPE,
        text=True
    )

    # get output
    stdout, stderr = process_compile.communicate()

    # # handle errors
    # if stderr:
    #     print(stderr)
    #     exit(1)

    # run
    process_run = subprocess.Popen(
        ["./bin/host_code", f"-i {input_size}"],
        stdin=subprocess.PIPE, 
        stdout=subprocess.PIPE, 
        stderr=subprocess.PIPE,
        text=True
    )

    # get output
    stdout, stderr = process_run.communicate()

    # handle errors
    if stderr:
        print(f"error: nr_dpus={nr_dpus}, nr_tasklets={nr_tasklets}, transfer_type={transfer}, input_size={input_size}, variable_type={variable_type}, interactor={interactor_type}")
        print(f"make clean && make NR_DUPS={nr_dpus} NR_TASKLETS={nr_tasklets} TRANSFER={transfer} TYPE={variable_type} INTERACTOR={interactor_type} && ./bin/host_code -i {input_size}")
        print(stderr)
        exit(1)

    # reclaim relevant data
    instruction_count = 0

    cpu_dpu_time = 0
    dpu_kernel_time = 0
    dpu_cpu_time = 0

    # parse all the lines in stdout
    for line in stdout.splitlines():
        # look for the line including "DPU instructions"
        if "DPU instructions" in line:
            # use regex to extract the numbers
            match = re.search(
                r"DPU instructions\s*=\s*([\deE+.-]+)",
                line
            )
            if match:
                instruction_count = float(match.group(1))

    # parse all lines in stdout
    for line in stdout.splitlines():
        # look for the line containing "CPU-DPU Time"
        if "CPU-DPU Time" in line:
            # use regex to extract the numbers
            match = re.search(
                r"CPU-DPU Time \(ms\):\s*([\d.]+)\s+DPU Kernel Time \(ms\):\s*([\d.]+)\s+DPU-CPU Time \(ms\):\s*([\d.]+)",
                line
            )
            if match:
                cpu_dpu_time = float(match.group(1))
                dpu_kernel_time = float(match.group(2))
                dpu_cpu_time = float(match.group(3))

    return instruction_count, dpu_kernel_time

    
# function to plot tasklet data
def plot_instruction_count(data):
    print(data)

    plt.plot(data, label='N DPU Instructions')
    # plt.title("DPU Instruction Plot")
    plt.xlabel("N Tasklets")
    plt.ylabel("N Instructions")
    plt.savefig("./fig.png")
    plt.close()


# function to print to CSV file
def print_to_csv(nr_dpus, nr_tasklets, transfer_types, input_sizes, variable_types, interactor_types):
    # csv format:
    # nr_dpus,input_size,transfer_types,nr_tasklets,variable_types,operation,nr_instructions
    header = ["nr_dpus","input_size","transfer_type","nr_tasklets","variable_type","interactor_type","nr_instructions","dpu_kernel_time"]
    data = [header]

    # compute data
    for transfer_type in transfer_types:
        for nr_dpu in nr_dpus:
            for variable_type in variable_types:
                for nr_tasklet in nr_tasklets:
                    for input_size in input_sizes:
                        for interactor_type in interactor_types:
                            if interactor_type == "SINGLE_TASKLET" and nr_tasklet > 1:
                                continue
                            nr_instructions, dpu_kernel_time = compile_and_run(nr_dpu, nr_tasklet, transfer_type, 0, input_size, variable_type, interactor_type)
                            nr_instructions = int(nr_instructions)
                            current_data = [nr_dpu, input_size, transfer_type, nr_tasklet, variable_type, interactor_type, nr_instructions, dpu_kernel_time]
                            data.append(current_data)

    # write to CSV file
    with open("lab3_task4_data.csv", "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerows(data)


def main():
    nr_dpus = [16]
    # nr_tasklets = [i for i in range(1, 25)]
    nr_tasklets = [1]
    transfer_types = ["PARALLEL"]
    input_sizes = [16 * 128, 1 * 16384, 16 * 16384]
    # input_sizes = [16 * 128]
    # variable_types = ["INT32", "INT64", "FLOAT", "DOUBLE", "CHAR", "SHORT"]
    variable_types = ["INT64"]
    interactor_types = ["ZERO_TASKLET_COLLECTION","SINGLE_TASKLET","TREE_BASED_BARRIERS","TREE_BASED_HANDSHAKES","MUTEX"]
    # interactor_types = ["ZERO_TASKLET_COLLECTION"]
    
    print_to_csv(nr_dpus, nr_tasklets, transfer_types, input_sizes, variable_types, interactor_types)

    # for op in ops:
    #     print(f"op: {op}")
    #     data = []
    #     for transfer_type in transfer_types:
    #         for nr_dpu in nr_dpus:
    #             for variable_type in variable_types:
    #                 print(f"\ttype: {variable_type}")
    #                 for nr_tasklet in nr_tasklets:
    #                     for input_size in input_sizes:
    #                         data.append(compile_and_run(nr_dpu, nr_tasklet, transfer_type, 0, input_size, variable_type, op))

    #     plot_instruction_count(data)


    # print("benchmark complete!")


if __name__ == "__main__":
    main()
