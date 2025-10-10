import sys
import os
import csv
import matplotlib.pyplot as plt
import numpy as np


def load_csv(filename):
    """Load CSV file and return a list of dictionaries."""
    if not os.path.exists(filename):
        print(f"Error: File '{filename}' not found.")
        return []

    try:
        with open(filename, 'r', newline='', encoding='utf-8') as csvfile:
            reader = csv.DictReader(csvfile)
            data = [row for row in reader]
        print(f"Loaded {len(data)} rows from '{filename}'")
        return data
    except Exception as e:
        print(f"Error reading '{filename}': {e}")
        return []


def find_best_instance_for_all_cache_sizes(data, ic_block, dc_block):
    """For each (IC_size, DC_size) pair, find the instance with the smallest Cycles."""
    if not data:
        print("No data available.")
        return []

    for row in data:
        row['IC_size'] = int(row['IC_size'])
        row['DC_size'] = int(row['DC_size'])
        row['IC_block'] = int(row['IC_block'])
        row['DC_block'] = int(row['DC_block'])
        row['Cycles'] = float(row['Cycles'])

    filtered = [
        row for row in data
        if row['IC_block'] == ic_block and row['DC_block'] == dc_block
    ]

    best_by_size = {}
    for row in data: # selecting from data not filtered
        key = (row['IC_size'], row['DC_size'])
        if key not in best_by_size or row['Cycles'] < best_by_size[key]['Cycles']:
            best_by_size[key] = row

    return list(best_by_size.values())


def find_best_instance_for_all_cache_blocks(data):
    """For each (IC_size, DC_size) pair, find the instance with the smallest Cycles."""
    if not data:
        print("No data available.")
        return []

    for row in data:
        row['IC_size'] = int(row['IC_size'])
        row['DC_size'] = int(row['DC_size'])
        row['IC_block'] = int(row['IC_block'])
        row['DC_block'] = int(row['DC_block'])
        row['Cycles'] = float(row['Cycles'])

    # filtered = [
    #     row for row in data
    #     if row['IC_size'] == ic_size and row['DC_size'] == dc_size
    # ]

    # for i in filtered:
    #     print(i)

    best_by_block = {}
    for row in data:
        key = (row['IC_block'], row['DC_block'])
        if key not in best_by_block or row['Cycles'] < best_by_block[key]['Cycles']:
            best_by_block[key] = row

    return list(best_by_block.values())

def find_best_instance_for_all_cache_assoc(data):
    """For each (IC_size, DC_size) pair, find the instance with the smallest Cycles."""
    if not data:
        print("No data available.")
        return []

    for row in data:
        row['IC_size'] = int(row['IC_size'])
        row['DC_size'] = int(row['DC_size'])
        row['IC_block'] = int(row['IC_block'])
        row['DC_block'] = int(row['DC_block'])
        row['IC_assoc'] = int(row['IC_assoc'])
        row['DC_assoc'] = int(row['DC_assoc'])
        row['Cycles'] = float(row['Cycles'])

    # filtered = [
    #     row for row in data
    #     if (row['IC_size'] == ic_size and row['DC_size'] == dc_size) and (row['IC_block'] == ic_block and row['DC_block'] == dc_block)
    # ]

    best_by_assoc = {}
    for row in data:
        key = (row['IC_assoc'], row['DC_assoc'])
        if key not in best_by_assoc or row['Cycles'] < best_by_assoc[key]['Cycles']:
            best_by_assoc[key] = row

    return list(best_by_assoc.values())


################################### PLOT CYCLES ###################################


def plot_heatmap(best_instances, param1, param2):
    """Plot 2D heatmap of Cycles for each IC/DC size pair."""
    if not best_instances:
        print("No data to plot.")
        return

    # Extract unique IC and DC sizes (sorted for correct axis alignment)
    ic_sizes = sorted(set(r[param1] for r in best_instances))
    dc_sizes = sorted(set(r[param2] for r in best_instances))

    # Build a 2D array (DC_size as y-axis, IC_size as x-axis)
    cycles_matrix = np.full((len(dc_sizes), len(ic_sizes)), np.nan)

    for r in best_instances:
        x = ic_sizes.index(r[param1])
        y = dc_sizes.index(r[param2])
        cycles_matrix[y, x] = r['Cycles']

    vmin = np.nanmin(cycles_matrix)
    vmax = np.nanmax(cycles_matrix)

    # Plot heatmap
    plt.figure(figsize=(8, 6))
    cmap = plt.cm.viridis
    im = plt.imshow(cycles_matrix, origin='lower', cmap=cmap, aspect='auto', vmin=vmin, vmax=vmax)

    plt.xticks(ticks=np.arange(len(ic_sizes)), labels=ic_sizes, rotation=45)
    plt.yticks(ticks=np.arange(len(dc_sizes)), labels=dc_sizes)
    plt.xlabel(param1)
    plt.ylabel(param2)
    plt.title("Cycles Heatmap (smaller is better)")
    plt.colorbar(im, label="Cycles")

    plt.tight_layout()
    plt.show()


def plot_cycles_vs_ic_for_each_dc(best_instances):
    """Plot Cycles vs IC_size for each DC_size on the same graph."""
    if not best_instances:
        print("No data to plot.")
        return

    dc_sizes = sorted(set(r['DC_size'] for r in best_instances))

    plt.figure(figsize=(8, 6))
    for dc in dc_sizes:
        filtered = sorted(
            [r for r in best_instances if r['DC_size'] == dc],
            key=lambda r: r['IC_size']
        )
        ic_sizes = [r['IC_size'] for r in filtered]
        cycles = [r['Cycles'] for r in filtered]
        plt.plot(ic_sizes, cycles, marker='o', label=f"DC={dc}")

    plt.xlabel("IC Size")
    plt.ylabel("Cycles")
    plt.title("Cycles vs IC Size for each DC Size")
    plt.legend(title="DC Size")
    plt.grid(True)
    plt.tight_layout()
    plt.show()


def plot_cycles_vs_dc_for_each_ic(best_instances):
    """Plot Cycles vs DC_size for each IC_size on the same graph."""
    if not best_instances:
        print("No data to plot.")
        return

    ic_sizes = sorted(set(r['IC_size'] for r in best_instances))

    plt.figure(figsize=(8, 6))
    for ic in ic_sizes:
        filtered = sorted(
            [r for r in best_instances if r['IC_size'] == ic],
            key=lambda r: r['DC_size']
        )
        dc_sizes = [r['DC_size'] for r in filtered]
        cycles = [r['Cycles'] for r in filtered]
        plt.plot(dc_sizes, cycles, marker='o', label=f"IC={ic}")

    plt.xlabel("DC Size")
    plt.ylabel("Cycles")
    plt.title("Cycles vs DC Size for each IC Size")
    plt.legend(title="IC Size")
    plt.grid(True)
    plt.tight_layout()
    plt.show()



################################### PLOT IPC ###################################

def plot_heatmap_ipc(best_instances, param1, param2):
    """Plot 2D heatmap of Cycles for each IC/DC size pair."""
    if not best_instances:
        print("No data to plot.")
        return

    # Extract unique IC and DC sizes (sorted for correct axis alignment)
    ic_sizes = sorted(set(r[param1] for r in best_instances))
    dc_sizes = sorted(set(r[param2] for r in best_instances))

    # Build a 2D array (DC_size as y-axis, IC_size as x-axis)
    cycles_matrix = np.full((len(dc_sizes), len(ic_sizes)), np.nan)

    for r in best_instances:
        x = ic_sizes.index(r[param1])
        y = dc_sizes.index(r[param2])
        cycles_matrix[y, x] = r['IPC']

    vmin = np.nanmin(cycles_matrix)
    vmax = np.nanmax(cycles_matrix)

    # Plot heatmap
    plt.figure(figsize=(8, 6))
    cmap = plt.cm.viridis
    im = plt.imshow(cycles_matrix, origin='lower', cmap=cmap, aspect='auto', vmin=vmin, vmax=vmax)

    plt.xticks(ticks=np.arange(len(ic_sizes)), labels=ic_sizes, rotation=45)
    plt.yticks(ticks=np.arange(len(dc_sizes)), labels=dc_sizes)
    # plt.xlabel(param1)
    # plt.ylabel(param2)
    plt.xlabel("instruction cache block size [bytes]")
    plt.ylabel("data cache block size [bytes]")
    plt.colorbar(im, label="IPC")

    plt.tight_layout()
    plt.show()


def plot_cycles_vs_ic_for_each_dc_ipc(best_instances):
    """Plot Cycles vs IC_size for each DC_size on the same graph."""
    if not best_instances:
        print("No data to plot.")
        return

    dc_sizes = sorted(set(r['DC_size'] for r in best_instances))

    plt.figure(figsize=(8, 6))
    for dc in dc_sizes:
        filtered = sorted(
            [r for r in best_instances if r['DC_size'] == dc],
            key=lambda r: r['IC_size']
        )
        ic_sizes = [r['IC_size'] for r in filtered]
        cycles = [r['IPC'] for r in filtered]
        plt.plot(ic_sizes, cycles, marker='o', label=f"DC={dc}")

    plt.xlabel("IC Size")
    plt.ylabel("IPC")
    plt.title("IPC vs IC Size for each DC Size")
    plt.legend(title="DC Size")
    plt.grid(True)
    plt.tight_layout()
    plt.show()


def plot_cycles_vs_dc_for_each_ic_ipc(best_instances):
    """Plot Cycles vs DC_size for each IC_size on the same graph."""
    if not best_instances:
        print("No data to plot.")
        return

    ic_sizes = sorted(set(r['IC_size'] for r in best_instances))

    plt.figure(figsize=(8, 6))
    for ic in ic_sizes:
        filtered = sorted(
            [r for r in best_instances if r['IC_size'] == ic],
            key=lambda r: r['DC_size']
        )
        dc_sizes = [r['DC_size'] for r in filtered]
        cycles = [r['IPC'] for r in filtered]
        plt.plot(dc_sizes, cycles, marker='o', label=f"IC={ic}")

    plt.xlabel("DC Size")
    plt.ylabel("IPC")
    plt.title("IPC vs DC Size for each IC Size")
    plt.legend(title="IC Size")
    plt.grid(True)
    plt.tight_layout()
    plt.show()


def main():
    if len(sys.argv) < 2:
        print("Usage: python evaluate_data.py <filename.csv>")
        return

    filename = sys.argv[1]
    data = load_csv(filename)

    # best_instances_size = find_best_instance_for_all_cache_sizes(data, 256, 256)
    # plot_heatmap(best_instances_size, 'IC_size', 'DC_size')
    # plot_cycles_vs_ic_for_max_dc(best_instances_size)
    # plot_cycles_vs_ic_for_each_dc(best_instances_size)
    # plot_cycles_vs_dc_for_each_ic_ipc(best_instances_size)

    # best_instances_block = find_best_instance_for_all_cache_blocks(data)
    # plot_heatmap_ipc(best_instances_block, 'IC_block', 'DC_block')

    best_instances_assoc = find_best_instance_for_all_cache_assoc(data)
    plot_heatmap_ipc(best_instances_assoc, 'IC_assoc', 'DC_assoc')


if __name__ == "__main__":
    main()
