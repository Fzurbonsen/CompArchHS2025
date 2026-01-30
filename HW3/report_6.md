# 6 Review "Artifact Appendix: GPUHammer: Rowhammer Attacks on GPU Memories are Practical" (50)

## Summary
This is not a paper in it self but an appendix to the paper "GPUHammer: Rowhammer Attacks on GPU Memores are Practical", this appendix gives a concrete implementation of a Rowhammer attack on a GPU system. The text clearly outlines what prerequisits are needed and provides scripts to execute the Rowhammer attack on a GPU system. It also gives a nice breakdown of the workflow.

- **ConflictRow-Set Generation:** The text provides a script which generates the Row-Set and Conflict-Set for the banks that will be hammered. The authors estimate that this step takes roughly one day to execute.

- **Systematic Hammering Campaigns:** A script is provided which performs 24-sided hammering patterns on the entire memory. The authors estimate that this steps takes roughly one day.

- **Bit-flip Characterization:** A set of experiments to characterize the Rowhammer Threshold and the TRR Sampler Size. The authors estimate taht this step tapes roughly five hours.

- **ML Model Explit:** A script is provided which implements a specifc exploit to degrade the accuracy of ML models through Rowhammer bit-flips. This is done by force placing model weights in victim locations followed by hammering.

## Strengths
The authors provide a working Rowhammer attack script and show how it can degrade the performance of a real world system (ML Model), on a GPU.
The paper clearly demonstrates the timescales needed to produce an effective Rowhammer attack.

## Weaknesses
The functioning of the exploit depends on a lot of knowledge of the system and the impact on the ML model are only visible if the weights are purposfully placed in victim locations.

## My POV
The paper is clearly a proof of concept, which shows that real Rowhammer attacks on GPU systems work. While it does not provide a malicious script, much rather it provides a script that can only be realistically be run by the system administrator, it is still clear that a similar and more sophisticated script could be used by a malicious actor to achieve the same effect. This clearly outlines the danger of Rowhammer attacks and in our current context the risk posed to big AI datacenter which depend in large part on GPUs or accelerators with similar designs as GPUs.

## Takeaways
- Rowhammer attacks work not only on RAM but also on GPU memory (VRAM).

- Rowhammer attacks can be performed in relatively short time scales (days).

- Rowhammer attacks can effectively be used to influence real-world applications such as ML algorithms.
