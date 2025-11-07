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
def compile_and_run(nr_dpus, nr_tasklets, transfer, do_print, input_size, variable_type, op):

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
        ["make", f"NR_DPUS={nr_dpus}", f"NR_TASKLETS={nr_tasklets}", f"TRANSFER={transfer}", f"PRINT={do_print}", f"TYPE={variable_type}", f"OPERATION={op}"],
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
        print(f"error: nr_dpus={nr_dpus}, nr_tasklets={nr_tasklets}, transfer_type={transfer}, input_size={input_size}, variable_type={variable_type}, op={op}")
        print(f"make clean && make NR_DUPS={nr_dpus} NR_TASKLETS={nr_tasklets} TRANSFER={transfer} TYPE={variable_type} OPERATION={op} && ./bin/host_code -i {input_size}")
        print(stderr)
        exit(1)

    # reclaim relevant data
    instruction_count = 0

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

    return instruction_count

    
# function to plot tasklet data
def plot_instruction_count(data):
    print(data)

    plt.plot(data, label='N DPU Instructions')
    # plt.title("DPU Instruction Plot")
    plt.xlabel("N Tasklets")
    plt.ylabel("N Instructions")
    plt.savefig("./fig.png")
    plt.close()
    

def print_to_csv(nr_dpus, nr_tasklets, transfer_types, input_sizes, variable_types, ops):
    # csv format:
    # nr_dpus,input_size,transfer_types,nr_tasklets,variable_types,operation,nr_instructions
    header = ["nr_dpus","input_size","transfer_type","nr_tasklets","variable_type","operation","nr_instructions"]
    data = [header]

    # compute data
    for transfer_type in transfer_types:
        for nr_dpu in nr_dpus:
            for variable_type in variable_types:
                if variable_type == "INT32" or variable_type == "FLOAT":
                    adjusted_input_size = input_sizes[0] * 2
                elif variable_type == "INT64" or variable_type == "DOUBLE":
                    adjusted_input_size = input_sizes[0]
                elif variable_type == "SHORT":
                    adjusted_input_size = input_sizes[0] * 4
                elif variable_type == "CHAR":
                    adjusted_input_size = input_sizes[0] * 8
                else:
                    print("error")
                    exit(1)
                for nr_tasklet in nr_tasklets:
                    for op in ops:
                        nr_instructions = int(compile_and_run(nr_dpu, nr_tasklet, transfer_type, 0, adjusted_input_size, variable_type, op))
                        current_data = [nr_dpu, input_sizes[0], transfer_type, nr_tasklet, variable_type, op, nr_instructions]
                        data.append(current_data)

    # write to CSV file
    with open("lab3_task3_data.csv", "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerows(data)

def main():
    nr_dpus = [16]
    nr_tasklets = [16]
    # nr_tasklets = [1, 2, 4, 8, 16]
    transfer_types = ["PARALLEL"]
    input_sizes = [8 * 16384] # print to csv can only handle single input size
    variable_types = ["INT32", "INT64", "FLOAT", "DOUBLE", "CHAR", "SHORT"]
    # variable_types = ["INT64"]
    ops = ["AXPY", "AXMINY", "AXMULY", "AXDIVY"]

    print_to_csv(nr_dpus, nr_tasklets, transfer_types, input_sizes, variable_types, ops)

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


    print("benchmark complete!")


if __name__ == "__main__":
    main()
