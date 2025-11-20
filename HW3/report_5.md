# 5 Review "Ramulator 2.0: A Modern, Modular, and Extensible DRAM Simulator" (18)

## Summary
The paper introduces the DRAM simulator Ramulator 2.0. Ramulator 2.0 builds on the foundations of Ramulator (referred to as Ramulator 1.0). Ramulator 2.0 is a fast and easily modifiable DRAM simulator implemented in C++20. Ramulator 2.0 makes the follwing improvements on its predecesors.

**First:** Ramulator 2.0 is highly modular. Individual parts of the simulation ar e implemented as standalone modules that communicate over standardized interfaces. This has the major advantage that intrusive changes to the simulated system can be made easily by modifying or replacing the C++ class which implements the functionality.

**Second:** Ramulator 2.0 provides a simple human-readable way to handle DRAM specifications. This simplifies the process of changing and testing different specifcation permutations significantly.

Ramulator 2.0 has been verified on MICRO's DDR4 verilog model to ensure correct functionality. Further the paper demonstrates the implementations and simmulations of a wide array of RowHammer mitigation techniques to demonstrate the ease of modification of Ramulator 2.0.

## Strengths
Ramulator 2.0 is a cycle accurate, fast, verified, and easily modifiable DRAM simulator. This is a significant feat that simplifies future research and verification significantly. The decision to open-source Ramulator 2.0 is also very commendable.

## My POV
I see no concrete downsides to Ramulator 2.0. There might be bugs or other inconveniences but as I have not used the tool I cannot comment on such things. From the paper it seems like a fast, oepen-source, and user-friendly DRAM simulator.

## Takeaways
- The capability to simulate DRAM behaviours with different configurations and the capability to freely adapt a system is very imporant. Ramulator 2.0 seems to provide this.
