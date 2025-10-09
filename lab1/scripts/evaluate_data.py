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


def find_best_instance_for_all_cache_sizes(data):
    """For each (IC_size, DC_size) pair, find the instance with the smallest Cycles."""
    if not data:
        print("No data available.")
        return []

    for row in data:
        row['IC_size'] = int(row['IC_size'])
        row['DC_size'] = int(row['DC_size'])
        row['Cycles'] = float(row['Cycles'])

    best_by_size = {}
    for row in data:
        key = (row['IC_size'], row['DC_size'])
        if key not in best_by_size or row['Cycles'] < best_by_size[key]['Cycles']:
            best_by_size[key] = row

    return list(best_by_size.values())


def plot_heatmap(best_instances):
    """Plot 2D heatmap of Cycles for each IC/DC size pair."""
    if not best_instances:
        print("No data to plot.")
        return

    # Extract unique IC and DC sizes (sorted for correct axis alignment)
    ic_sizes = sorted(set(r['IC_size'] for r in best_instances))
    dc_sizes = sorted(set(r['DC_size'] for r in best_instances))

    # Build a 2D array (DC_size as y-axis, IC_size as x-axis)
    cycles_matrix = np.full((len(dc_sizes), len(ic_sizes)), np.nan)

    for r in best_instances:
        x = ic_sizes.index(r['IC_size'])
        y = dc_sizes.index(r['DC_size'])
        cycles_matrix[y, x] = r['Cycles']

    vmin = np.nanmin(cycles_matrix)
    vmax = np.nanmax(cycles_matrix)

    # Plot heatmap
    plt.figure(figsize=(8, 6))
    cmap = plt.cm.viridis
    im = plt.imshow(cycles_matrix, origin='lower', cmap=cmap, aspect='auto', vmin=vmin, vmax=vmax)

    plt.xticks(ticks=np.arange(len(ic_sizes)), labels=ic_sizes, rotation=45)
    plt.yticks(ticks=np.arange(len(dc_sizes)), labels=dc_sizes)
    plt.xlabel("IC Size")
    plt.ylabel("DC Size")
    plt.title("Cycles Heatmap (smaller is better)")
    plt.colorbar(im, label="Cycles")

    plt.tight_layout()
    plt.show()


def main():
    if len(sys.argv) < 2:
        print("Usage: python evaluate_data.py <filename.csv>")
        return

    filename = sys.argv[1]
    data = load_csv(filename)

    best_instances = find_best_instance_for_all_cache_sizes(data)
    for i in best_instances:
        print(i)
    plot_heatmap(best_instances)


if __name__ == "__main__":
    main()
