"""
Plot instructions per tasklet vs number of tasklets for different DPUs.
Based on your CSV with columns:
nr_dpus,input_size,transfer_type,variable_type,nr_tasklets,nr_instructions
"""

from __future__ import annotations
import csv
from collections import defaultdict
from pathlib import Path
from typing import Dict, List, Tuple
import matplotlib.pyplot as plt

# === Config ===
CSV_FILENAME = "lab3_task2_data.csv"  # change this to your CSV filename

# line styles per number of DPUs
DPU_STYLES: Dict[int, Dict[str, str]] = {
    1: {"linestyle": "-", "marker": "o"},
    16: {"linestyle": "--", "marker": "s"},
    32: {"linestyle": ":", "marker": "x"},
    64: {"linestyle": "-.", "marker": "^"},
}

plt.rcParams["font.family"] = "serif"
plt.rcParams["font.size"] = 10

# --- Helpers ---
def load_data(csv_path: Path) -> Dict[int, List[Tuple[int, int]]]:
    """
    Load CSV and group (nr_tasklets, nr_instructions) by nr_dpus.
    Returns a dictionary: {nr_dpus: [(nr_tasklets, nr_instructions), ...]}
    """
    data = defaultdict(list)
    with csv_path.open(newline="") as csv_file:
        reader = csv.DictReader(csv_file)
        for row in reader:
            nr_dpus = int(row["nr_dpus"])
            nr_tasklets = int(row["nr_tasklets"])
            nr_instructions = int(row["nr_instructions"])
            data[nr_dpus].append((nr_tasklets, nr_instructions))

    # Sort each list by nr_tasklets for smooth plotting
    for key in data:
        data[key].sort(key=lambda t: t[0])

    return data

# --- Plotting ---
def plot_instructions_per_tasklet(data: Dict[int, List[Tuple[int, int]]]):
    fig, ax = plt.subplots(figsize=(8, 6))

    for nr_dpus, samples in sorted(data.items()):
        tasklets = [t[0] for t in samples]
        instructions_per_tasklet = [t[1] / t[0] for t in samples]  # compute ratio
        style = DPU_STYLES.get(nr_dpus, {"linestyle": "-", "marker": "o"})
        ax.plot(
            tasklets,
            instructions_per_tasklet,
            label=f"{nr_dpus} DPUs",
            linestyle=style["linestyle"],
            marker=style["marker"],
            linewidth=1.5
        )

    ax.set_xlabel("Number of Tasklets")
    ax.set_ylabel("Instructions per Tasklet")
    ax.set_title("Instructions per Tasklet vs Number of Tasklets for Different DPUs")
    ax.grid(True, linestyle="--", alpha=0.4)
    ax.legend(fontsize="small")
    fig.tight_layout()

    # Save plots
    fig.savefig("lab3_task2_plot.png", dpi=300)
    fig.savefig("lab3_task2_plot.eps")

    plt.show()


def main():
    csv_path = Path(CSV_FILENAME)
    data = load_data(csv_path)
    plot_instructions_per_tasklet(data)


if __name__ == "__main__":
    main()
