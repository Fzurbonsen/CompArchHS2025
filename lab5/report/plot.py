'''
plot.py
Script to create the plots for lab5.
Author: Frederic zur Bonsen
E-Mail: fzurbonsen@ethz.ch
'''

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

data_dir = "../bench/data/"
img_dir = "img/"

df1 = pd.read_csv(data_dir + "workload1.csv")
df2 = pd.read_csv(data_dir + "workload2.csv")
df3 = pd.read_csv(data_dir + "workload3.csv")
df4 = pd.read_csv(data_dir + "workload4.csv")

df0_low = pd.read_csv(data_dir + "workload0_low.csv")
df0_high = pd.read_csv(data_dir + "workload0_high.csv")

'''
instruction throughput plot
'''

data = np.array([
  df1["instruction_throughput"].values,
  df2["instruction_throughput"].values,
  df3["instruction_throughput"].values,
  df4["instruction_throughput"].values
])

n_groups = data.shape[0]
n_bars = data.shape[1]

x = np.arange(n_groups)

width = 0.2

cmap = plt.cm.magma  # or plasma, inferno, magma, Blues, etc.
colors = cmap(np.linspace(0.2, 0.8, n_bars))

configs = [
    "FCFS",
    "FR-FCFS",
    "ATLAS",
    "BLISS"
]

workloads = [
    "1H-3L",
    "2H-2L",
    "4H",
    "8H"
]

plt.figure(figsize=(8, 5))

for i in range(n_bars):
  bars = plt.bar(
    x + i * width,
    data[:, i],
    width=width,
    label=configs[i],
    color=colors[i]
  )

  for bar in bars:
    height = bar.get_height()
    plt.text(
      bar.get_x() + bar.get_width() / 2,
      height,
      f"{height:.2f}",
      ha="center",
      va="bottom",
      fontsize=8
    )

# Center x-ticks under the groups
plt.xticks(
    x + width * (n_bars - 1) / 2,
    workloads
)


plt.grid(
  axis="y",
  linestyle="--",
  linewidth=0.6,
  alpha=0.5
)

plt.ylabel("Instruction Throughput")
plt.xlabel("Workloads")
plt.legend()
plt.tight_layout()
plt.savefig(img_dir + "instruction_throughput.png", dpi=300)
plt.savefig(img_dir + "instruction_throughput.eps")
plt.show()


'''
maximum slowdown plot
'''

df = pd.read_csv(data_dir + "maximum_slowdown.csv")

df_pivot = df.pivot(index="workload", columns="config", values="max_slowdown")

workloads = ["workload1", "workload2", "workload3", "workload4"]
configs = ["FCFS", "FRFCFS", "ATLAS", "BLISS"]
df_pivot = df_pivot[configs]
print(df_pivot)

data = df_pivot.values

n_groups = data.shape[0]
n_bars = data.shape[1]
x = np.arange(n_groups)
width = 0.2

cmap = plt.cm.magma
colors = cmap(np.linspace(0.2, 0.8, n_bars))

configs = ["FCFS", "FR-FCFS", "ATLAS", "BLISS"]
workload_labels = ["1H-3L", "2H-2L", "4H", "8H"]

plt.figure(figsize=(8, 5))

for i in range(n_bars):
    bars = plt.bar(
        x + i * width,
        data[:, i],
        width=width,
        label=configs[i],
        color=colors[i]
    )
    for bar in bars:
        height = bar.get_height()
        plt.text(
            bar.get_x() + bar.get_width() / 2,
            height,
            f"{height:.2f}",
            ha="center",
            va="bottom",
            fontsize=8
        )

plt.xticks(
    x + width * (n_bars - 1) / 2,
    workload_labels
)

plt.gca().set_axisbelow(True)
plt.grid(axis="y", linestyle="--", linewidth=0.6, alpha=0.5)

plt.ylabel("Maximum Slowdown")
plt.xlabel("Workloads")
plt.legend()
plt.tight_layout()
plt.savefig(img_dir + "maximum_slowdown.png", dpi=300)
plt.savefig(img_dir + "maximum_slowdown.eps")
plt.show()