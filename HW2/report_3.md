# Review: "RAIDR: Retention-Aware Intelligent DRAM Refresh" + Retrospective (3)

## Summary

### Paper
The paper outlines the issue posed by the differences in required refresh rates of DRAM-cells. It proposes RAIDR as a solution to this problem and provides a simulation of the RAIDR system. It does this in the following steps:

- The paper explains the fundamentals of DRAM and shows that not all cells require the same refresh rate. The paper therfore concludes that a lot of time and energy is wasted refreshing DRAM-cells that do not need to be refreshed.

- The paper proposes RAIDR as a solution to the refresh problem. The idea of RAIDR is to group cells into bins with different refresh rates. Each bin corresponds to a minimal refresh rate and all cells in that bin get refreshed with this refresh rate. The bin information is stored via bloom filters which allows implementation with minimal cost.

- With RAIDR there only needs to be an initial profiling and grouping of the cells into the bins and then the DRAM can run with these different refresh rates.

- The paper compares its approach to similar approaches and outlines strengths, weaknesses and interoperability.

- The paper provides simulation results for the RAIDR implementation which show that it provides siginificant speedup compared to the baseline. The results further show that the idle powerconsumption of RAIDR is lower then the baseline giving it a clear advantage for idle DRAM refreshes.

### Retrospective
The retrospective gives background on professor Mutlu's work on DRAMs and work in the 2000s. It states that the main impact of the RAIDR paper was as inspiration for following research. The retrospective also admitts that RAIDR does not account for VRT or DPD. Further the retrospective explains that the with the help of industry a physical testing setup could be realised after the publication of the original paper.

## Strengths
**The paper** works on the important topic of DRAM-cell refreshing and outlines a strong core idea of different refresh times. It provides an initial ansatz to solve this problem with RAIDR. The paper provides a through analisys of the system and its simulated performance.
**The retrospective** gives imporant context for the paper and provides the exitstance of the open source physical implementation of the system.

## Weaknesses
The RAIDR system as proposed in the paper does not address DPD or VRT which is a clear weakness. Further it only relies on simulated results at least in its initial form but it is clarified in the retrospective that a physical implementation was built which seemingly matched the simulated performance - the results are not provided directly - of RAIDR.

## My POV
With the benefit of hindsight I would clearly account for DPD or VRT but this is an unfair perspective and must admit that the paper layed important groundwork in the area of DRAM refresh optimization. The fact that a physical implementation was realised is of great value to me as it builds a clear link between theory and application.

## Takeaways

- DRAM-cell refresh optimization is fundamental to further improve the performance of DRAM chips in the future. This paper provides a very early approach to solving this issue.
