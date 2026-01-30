import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Load your CSV
df = pd.read_csv("lab3_task3_data.csv")

# Optional: check your data
print(df.head())

# Create a grouped column plot
plt.figure(figsize=(12, 6))
sns.barplot(
    data=df,
    x="variable_type",       # x-axis: groups
    y="nr_instructions",     # y-axis: values
    hue="operation",         # color by operation
    ci=None                  # optional: remove confidence interval
)

# Customize plot
plt.xlabel("Variable Type")
plt.ylabel("Number of Instructions")
plt.grid(True, linestyle="--", alpha=0.4)
plt.legend(title="Operation")
plt.tight_layout()

plt.savefig("lab3_task3_plot.png", dpi=300)
plt.savefig("lab3_task3_plot.eps")

# Show the plot
plt.show()