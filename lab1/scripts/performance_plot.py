import os
import pandas as pd
import matplotlib.pyplot as plt

# Define paths
base_path = "../data"
domains = ["fifo", "lru", "random"]
testsets = ["cache_size_sweep", "block_size_sweep", "assoc_size_sweep"]
# names = ["dcache_filler", "icache_filler", "primes", "random1", "sequential_access", "strided_access"]
names = ["sequential_access"]

# Specify the exact configuration you want
target_config = {
    "IC_size": 4*1024,
    "IC_block": 64,
    "IC_assoc": 4,
    "DC_size": 32*1024,
    "DC_block": 64,
    "DC_assoc": 4
}

# Dictionary to store IPC for each NAME in each DOMAIN
ipc_values_dict = {name: {domain: None for domain in domains} for name in names}

# Iterate over domains and testsets
for domain in domains:
    for testset in testsets:
        for name in names:
            file_path = os.path.join(base_path, domain, testset, f"{name}.csv")
            if os.path.exists(file_path):
                df = pd.read_csv(file_path)
                if not df.empty:
                    # Filter by the target configuration
                    filtered_df = df[
                        (df['IC_size'] == target_config['IC_size']) &
                        (df['IC_block'] == target_config['IC_block']) &
                        (df['IC_assoc'] == target_config['IC_assoc']) &
                        (df['DC_size'] == target_config['DC_size']) &
                        (df['DC_block'] == target_config['DC_block']) &
                        (df['DC_assoc'] == target_config['DC_assoc'])
                    ]
                    if not filtered_df.empty:
                        ipc_values_dict[name][domain] = filtered_df.iloc[0]['IPC']

# Plot IPC for each NAME across DOMAINS
for name in names:
    ipc_vals = [ipc_values_dict[name][domain] if ipc_values_dict[name][domain] is not None else 0 for domain in domains]
    
    plt.figure(figsize=(6,4))
    plt.bar(domains, ipc_vals, color=['skyblue', 'orange', 'green'])
    plt.title(f"IPC for {name} with specific cache config")
    plt.ylabel("IPC")
    plt.xlabel("Domain")
    plt.ylim(0, max(ipc_vals)*1.1)
    plt.show()
