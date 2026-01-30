import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Load CSV
df = pd.read_csv("lab3_task4_data.csv")

# Exclude SINGLE_TASKLET interactor type
df = df[df["interactor_type"] != "SINGLE_TASKLET"]

# Compute mean kernel time per (input_size, interactor_type)
df_avg = df.groupby(["input_size", "interactor_type"], as_index=False)["nr_instructions"].mean()

# Convert input_size to MB for plotting
df_avg["input_size_mb"] = df_avg["input_size"] / 16384

# Set seaborn style
sns.set(style="whitegrid")

# Create the bar plot
plt.figure(figsize=(12, 6))
sns.barplot(
    data=df_avg,
    x="input_size_mb",            # use MB values for x-axis
    y="nr_instructions",          # plot kernel time instead of instructions
    hue="interactor_type",
    ci=None,
    palette="Set2"
)

# Customize plot
plt.xlabel("Input Size (MB)")
plt.ylabel("Instruction Count")
plt.grid(True, linestyle="--", alpha=0.4)
plt.legend(title="Interactor Type")
plt.tight_layout()

# Save the plot
plt.savefig("lab3_task4_plot_2.png", dpi=300)
plt.savefig("lab3_task4_plot_2.eps")

plt.show()
