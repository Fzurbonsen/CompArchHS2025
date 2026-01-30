"""
Plot measured transfer bandwidths for CPU<->DPU transfers.
Based on your CSV with columns:
nr_dpus,input_size,transfer_type,cpu-dpu_time,dpu-cpu_time
"""

from __future__ import annotations
import csv
from collections import defaultdict
from pathlib import Path
from typing import Dict, List, Tuple, Iterable
import matplotlib.pyplot as plt

# === Config ===
CSV_FILENAME = "lab3_task1_data.csv"  # change this to your actual filename

CPU_TO_DPU_METHODS = {"serial", "parallel", "broadcast"}
DPU_TO_CPU_METHODS = {"serial", "parallel"}

# style per transfer type
METHOD_STYLES: Dict[str, Dict[str, str]] = {
    "serial": {"linestyle": "-", "marker": "o"},
    "parallel": {"linestyle": "--", "marker": "s"},
    "broadcast": {"linestyle": ":", "marker": "x"},
}

plt.rcParams["font.family"] = "serif"
plt.rcParams["font.size"] = 10


# --- Helpers ---
def _bandwidth(size_units: float, time: float) -> float:
    """
    Compute bandwidth in bits per second.
    Each input unit = 4 bytes, convert to bits.
    """
    if time <= 0:
        return float("nan")
    size_bits = size_units / 16384
    adjusted_time = time
    return size_bits / adjusted_time  


def load_bandwidths(csv_path: Path):
    """Load data and group by (transfer_type, input_size)."""
    cpu_to_dpu = defaultdict(list)
    dpu_to_cpu = defaultdict(list)

    with csv_path.open(newline="") as csv_file:
        reader = csv.DictReader(csv_file)
        for row in reader:
            method = row["transfer_type"].strip().lower()
            dpu_cnt = int(row["nr_dpus"])
            input_size = float(row["input_size"])
            cpu_dpu_time = float(row["cpu-dpu_time"])
            dpu_cpu_time = float(row["dpu-cpu_time"])

            bw_cpu_dpu = _bandwidth(input_size, cpu_dpu_time)
            bw_dpu_cpu = _bandwidth(input_size, dpu_cpu_time)

            if method in CPU_TO_DPU_METHODS:
                cpu_to_dpu[(method, input_size)].append((dpu_cnt, bw_cpu_dpu))
            if method in DPU_TO_CPU_METHODS:
                dpu_to_cpu[(method, input_size)].append((dpu_cnt, bw_dpu_cpu))

    # sort each series by nr_dpus
    for dataset in (cpu_to_dpu, dpu_to_cpu):
        for key in dataset:
            dataset[key].sort(key=lambda t: t[0])

    return cpu_to_dpu, dpu_to_cpu


def _plot_direction(
    ax,
    data: Dict[Tuple[str, float], List[Tuple[int, float]]],
    title: str,
    include_methods: Iterable[str],
    size_colors: Dict[float, Tuple[float, float, float]],
):
    """Plot grouped bandwidths for one direction."""
    for (method, size_units), samples in data.items():
        if method not in include_methods:
            continue
        dpu_counts = [p[0] for p in samples]
        bandwidths = [p[1] for p in samples]

        # convert input size to MB for legend
        size_mb = size_units / 16384
        label = f"{size_mb:.1f} MB - {method.capitalize()}"

        style = METHOD_STYLES.get(method, {})
        ax.plot(
            dpu_counts,
            bandwidths,
            label=label,
            linestyle=style.get("linestyle", "-"),
            marker=style.get("marker", "o"),
            color=size_colors.get(size_units, (0.2, 0.2, 0.2)),
            linewidth=1.5,
        )

    ax.set_title(title)
    ax.set_xlabel("Number of DPUs")
    ax.set_ylabel("Bandwidth MB/s")
    ax.grid(True, linestyle="--", alpha=0.4)
    ax.legend(fontsize="small", ncol=2)


def plot_bandwidths(
    cpu_to_dpu: Dict[Tuple[str, float], List[Tuple[int, float]]],
    dpu_to_cpu: Dict[Tuple[str, float], List[Tuple[int, float]]],
):
    """Create the 2-subplot figure (CPU→DPU and DPU→CPU)."""
    # collect unique input sizes for consistent colors
    unique_sizes = sorted({size for _, size in cpu_to_dpu} | {size for _, size in dpu_to_cpu})
    cmap = plt.get_cmap("Set2", max(len(unique_sizes), 1))
    size_colors = {size: cmap(i % cmap.N)[:3] for i, size in enumerate(unique_sizes)}

    fig, axes = plt.subplots(2, 1, figsize=(10, 10), sharex=True)

    _plot_direction(
        axes[0],
        cpu_to_dpu,
        "CPU → DPU Transfer Bandwidth",
        CPU_TO_DPU_METHODS,
        size_colors,
    )

    _plot_direction(
        axes[1],
        dpu_to_cpu,
        "DPU → CPU Transfer Bandwidth",
        DPU_TO_CPU_METHODS,
        size_colors,
    )

    axes[1].set_xlabel("Number of DPUs")

    fig.tight_layout()

    fig.savefig("lab3_task1_plot.png", dpi=300)
    fig.savefig("lab3_task1_plot.eps")

    plt.show()


def main():
    csv_path = Path(CSV_FILENAME)
    cpu_to_dpu, dpu_to_cpu = load_bandwidths(csv_path)
    plot_bandwidths(cpu_to_dpu, dpu_to_cpu)


if __name__ == "__main__":
    main()
