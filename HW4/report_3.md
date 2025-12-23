# 3 Review "Pythia: A Customizable Hardware Prefetching Framework Using Online Reinforcement Learning" (3)

## Summary
The paper addresses the issue of memory prefetching. The basic idea of memory prefetching is to load memory into a cache before the CPU needs it, thus reducing cache miss rates and therfore reducing the compute time by masking the high DRAM access latency. The paper proposes a reinforcement-learining(RL) based prefetcher called Pythia. The paper explains its funcitonality, assesses its performance on a set of recognized benchmarks, and compares it to other prefetchers. The paper does this in the following steps.

- The paper introduces pythia as an RL-based prefetcher. The key idea is that RL allows the prefetcher to efficiently learn memory access patterns. Further RL enables the Pythia to learn online meaning that its policies can adapt to the workload independently.

- To train the RL-model Pythia has a set of five rewards which it uses to learn any memory access patterns that might occur. These as well as the hyperparamters were tuned by successive experiments. The five rewards are:

	1. Accurate and Timely
	2. Accurate but Late
	3. Loss of Coverage
	4. Inaccurate
	5. No-Prefetch
	
- The paper claims that Pythia has a space and energy cost of 1.03% and 0.37% on a 4-core desktop class processor. This claim is based on an HDL implementation of Pythia compiled with Synopsys. The paper also evaluates Pythia with the ChampSim simulator and compares it to other state-of-the-art prefetchers. The paper shows that Pythia outperforms the other prefetchers on most of the traces and in the geometric mean performance over all traces.

## Strengths
The idea to use machine learning for prefetching is not new but the efficient RL implementation warants acknowledgement. Pythia shows very strong best case performance and strong average performance.

## Weaknesses
Pythia shows clear performance degradation for some traces. Tese examples were not highlited in the paper but my own investigation of Pythia has led me to this conclusion. The area and energy cost of 1.03% and 0.37% are significant as these values are not comparisons to other prefetchers but to the overall processor. This issue was insufficiently discussed in the paper.

## My POV
Pythia provides clear advantages. Mainly its high peak performance seems very promising. But the significant area and energy cost which are related to its complecity might prohibit implementation in a real setting, as Pythia does not provide constant performance. This is due to performance degradation for ceratin applications.

## Takeaways
- RL is a powerfull tool that can lead to significant speedup through prefetching. But a more complex implementation always comes at an energy and area cost.

- Pythia shows promise but is insufficient to be used in an actual implementation as it does shows performance degradation in some application traces.