import subprocess
import pandas as pd
import re
import os

# global config
bin_path = "../build/ramulator2"
data_dir = "data/"
output_dir = "output/"
config_dir = "configs/"
workload = "workload0"
data_path = data_dir + workload + "_low.csv"

configs = [
    "FCFS_low",
    "FRFCFS_low",
    "ATLAS_low",
    "BLISS_low",
]

def run(bin_path: str, config: str) -> str:
    """Run ramulator2 and return stdout"""
    cmd = [bin_path, "-f", config]
    result = subprocess.run(
        cmd,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True
    )

    if result.returncode != 0:
        print(f"[WARN] Ramulator exited with code {result.returncode}")
        print(result.stderr)
        print(result.stdout)
        exit(1)

    return result.stdout


def parse_output(stdout: str):
    """
    Parse stdout and extract:
      - cycles per core
      - instructions retired per core
    """
    cycles_per_core = {}
    insts_per_core = {}

    for line in stdout.splitlines():
        line = line.strip()
        
        # cycles
        m = re.match(r"cycles_recorded_core_(\d+):\s+(\d+)", line)
        if m:
          core_id = int(m.group(1))
          cycles = int(m.group(2))
          cycles_per_core[core_id] = cycles

        # instructions retired per core
        m = re.match(r"instructions_retired_core_(\d+):\s+(\d+)", line)
        if m:
          core_id = int(m.group(1))
          insts = int(m.group(2))
          insts_per_core[core_id] = insts

    return cycles_per_core, insts_per_core


def main():
    rows = []

    for config in configs:
        print(f"Running {workload} {config}...")
        stdout = run(bin_path, config_dir + workload + "_" + config + ".yaml")

        cycles_per_core, insts_per_core = parse_output(stdout)

        total_cycles = max(cycles_per_core.values())

        total_insts = sum(insts_per_core.values())
        instruction_throughput = total_insts / total_cycles

        row = {
            "config": config,
            "total_cycles": total_cycles,
            "total_instructions": total_insts,
            "instruction_throughput": instruction_throughput,
        }

        # also store per-core instructions
        for core_id, insts in insts_per_core.items():
            row[f"insts_core_{core_id}"] = insts

        rows.append(row)

        with open(output_dir + workload + "_" + config + ".log", "w") as f:
            f.write(stdout)

    df = pd.DataFrame(rows)
    os.makedirs(os.path.dirname(data_path), exist_ok=True)
    df.to_csv(data_path, index=False)

    print(f"Results written to {data_path}")
    print(df)


if __name__ == "__main__":
    main()
