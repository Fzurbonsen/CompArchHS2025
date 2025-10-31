# 
# benchmark.py:
# This file executes a set of simple tests to benchmark the DPUs.
# Author: Frederic zur Bonsen
# E-Mail: <fzurbonsen@ethz.ch>
# 

import os
import subprocess
import re
import matplotlib.pyplot as plt

# function to compile and run an instance
def compile_and_run(nr_dpus, nr_tasklets, transfer, do_print, input_size):

    # compile
    process_compile = subprocess.Popen(
        ["make", f"NR_DPUS={nr_dpus}", f"NR_TASKLETS={nr_tasklets}", f"TRANSFER={transfer}", f"PRINT={do_print}"],
        stdin=subprocess.PIPE, 
        stdout=subprocess.PIPE, 
        stderr=subprocess.PIPE,
        text=True
    )

    # get output
    stdout, stderr = process_compile.communicate()

    # handle errors
    if stderr:
        print(stderr)
        exit(1)

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
        print(stderr)
        exit(1)

    # parse output to reclaim relevant data
    cpu_dpu_time = 0
    dpu_kernel_time = 0
    dpu_cpu_time = 0

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

    # return the timing results
    return cpu_dpu_time, dpu_kernel_time, dpu_cpu_time


# function to plot performance depending on nr_dpus and transfer_types
def plot_performance(transfer_type, nr_dpus, data):
    # print(f"transfer_type={transfer_type}\nnr_dpus={nr_dpus}")
    # print(data)

    cpu_dpu_time = [d[0] for d in data]
    dpu_kernel_tim = [d[1] for d in data]
    dpu_cpu_time = [d[2] for d in data]

    plt.plot(cpu_dpu_time, label='CPU-DPU Time')
    plt.plot(dpu_kernel_tim, label='DPU Kernel Time')
    plt.plot(dpu_cpu_time, label='DPU-CPU Time')
    plt.savefig("fig.png")
    plt.close()
    




def main():
    nr_dpus = [1, 4, 16, 64]
    # nr_tasklets = [16]
    input_sizes = [1 * 131072, 24 * 131072, 48 * 131072]
    transfer_types = ["PARALLEL", "BROADCAST", "SERIAL"]

    results = {
        "PARALLEL" : [],
        "BROADCAST" : [],
        "SERIAL" : []
    }

    for transfer_type in transfer_types:
        dpu_list = []
        for nr_dpu in nr_dpus:
            input_list = []
            for input_size in input_sizes:
                input_list.append(compile_and_run(nr_dpu, 16, transfer_type, 0, input_size))
            dpu_list.append(input_list)
        results[transfer_type] = dpu_list

    for transfer_type in transfer_types:
        nr_dpus = 1
        single_type_list = results[transfer_type]
        for data in single_type_list:
            plot_performance(transfer_type, nr_dpus, data)
            nr_dpus *= 4




if __name__ == '__main__':
    main()