import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import os

# List of your CSV files
files = [
    "../data/lru/cache_size_sweep/dcache_filler.csv",
    "../data/lru/cache_size_sweep/icache_filler.csv",
    "../data/lru/cache_size_sweep/random1.csv",
    "../data/lru/cache_size_sweep/sequential_access.csv",
    "../data/lru/cache_size_sweep/strided_access.csv",
    "../data/lru/cache_size_sweep/primes.csv"
]

# Initialize an empty DataFrame to hold all data
all_data = pd.DataFrame()

# Load each CSV
for f in files:
    df = pd.read_csv(f)
    # Convert IC_size to KB
    df['IC_size_KB'] = df['IC_size'] / 1024
    # Extract just the filename without path and extension
    instance_name = os.path.splitext(os.path.basename(f))[0]
    df['Instance'] = instance_name
    all_data = pd.concat([all_data, df], ignore_index=True)

# Plot
plt.figure(figsize=(10,6))
sns.lineplot(data=all_data, x='IC_size_KB', y='IPC', hue='Instance', marker='o')
plt.xscale('log', base=2)  # Logarithmic x-axis (base 2)

# Optional: set x-ticks nicely at powers of 2 KB
min_exp = int(all_data['IC_size_KB'].min()).bit_length() - 1
max_exp = int(all_data['IC_size_KB'].max()).bit_length() + 1
xticks = [2**i for i in range(min_exp, max_exp)]
plt.xticks(xticks, [f"{x} KB" for x in xticks])

plt.title('IPC vs IC_size')
plt.xlabel('IC Size (KB)')
plt.ylabel('IPC')
plt.grid(True, which="both", ls="--", lw=0.5)
plt.tight_layout()
plt.show()
