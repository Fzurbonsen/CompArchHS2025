'''
plot.py
Script to plot D-cache size sweep.
Author: Frederic zur Bonsen
E-Mail: fzurbonsen@ethz.ch
'''


import matplotlib.pyplot as plt
import pandas as pd
import os

path = "../data/lru/cache_size_sweep_add/"

traces = [
  "levenshtein",
  "matmul",
  "primes",
  "strided_access"
]

for trace in traces:
  if not os.path.exists(path + trace + ".csv"):
    print(trace + " does not exist")
    
trace_ipc = []
dc_sizes = []

for trace in traces:
  df = pd.read_csv(path + trace + ".csv")
  ipc = df["IPC"].values
  trace_ipc.append(ipc)
  dc_size = df["DC_size"].values
  dc_sizes.append(dc_size)
  
# convert to KB
for i in range(len(dc_size)):
  dc_size[i] = dc_size[i] / 1024
  

# build plot
colors = ['b', 'g', 'r', 'c', 'm', 'y', 'k', 'orange']

plt.figure(figsize=(10, 6))
  
for trace, ipc, color in zip(traces, trace_ipc, colors):
  plt.plot(dc_size, ipc, label=trace, color=color, marker='o', markersize=4)
  
plt.xlabel("Data Cache Size [KB]")
plt.xscale("log", base=2)
plt.ylabel("IPC")
plt.legend()
plt.grid()
plt.tight_layout()
plt.savefig("img/lru/dcache_size_sweep.eps")
plt.savefig("img/lru/dcache_size_sweep.png")
plt.show()