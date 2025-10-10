import os
import pandas as pd
import matplotlib.pyplot as plt

# Define paths
base_path = "../data"
domains = ["fifo", "lru"]
testsets = ["cache_size_sweep", "block_size_sweep", "assoc_size_sweep"]
names = ["dcache_filler", "icache_filler", "primes", "random1", "sequential_access", "strided_access"]

# Dictionary to store best IPC for each NAME in each DOMAIN
best_ipc = {name: {domain: None for domain in domains} for name in names}

# Iterate over domains and testsets
for domain in domains:
    for testset in testsets:
        for name in names:
            file_path = os.path.join(base_path, domain, testset, f"{name}.csv")
            if os.path.exists(file_path):
                df = pd.read_csv(file_path)
                if not df.empty:
                    # Find the row with the highest IPC
                    max_ipc_row = df.loc[df['IPC'].idxmax()]
                    current_best = best_ipc[name][domain]
                    # Update if this is the best IPC seen so far for this NAME and DOMAIN
                    if current_best is None or max_ipc_row['IPC'] > current_best['IPC']:
                        best_ipc[name][domain] = max_ipc_row

# Now plot IPC for each NAME across DOMAINS
for name in names:
    ipc_values = [best_ipc[name][domain]['IPC'] if best_ipc[name][domain] is not None else 0 for domain in domains]
    
    plt.figure(figsize=(6,4))
    plt.bar(domains, ipc_values, color=['skyblue', 'orange'])
    plt.title(f"Best IPC for {name}")
    plt.ylabel("IPC")
    plt.xlabel("Domain")
    plt.ylim(0, max(ipc_values)*1.1)  # some padding
    plt.show()
