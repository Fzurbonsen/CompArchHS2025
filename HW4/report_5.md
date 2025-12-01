# 5 Review "Continuous Runahead: Transparent Hardware Acceleration for Memory Intensive Workloads" + Retrospecitve (5)

## Summary

### Paper

The paper discusses the issue of cache miss mitigation via runahead execution. Runahead execution is a process where a runahead processor executes a part of an appliaction before the CPU does to predict memory accesses and preload them into the cache to reduce cache misses. The paper shows that the runahead efficiency is heavily dependent on the runahead window. To increase runahead performance it proposes continuous runahed. The paper compares the results with other runahead implementations as well as other prefetchers. It does this in the following steps:

- The paper states that runahead in contrary to prefetchers have a very high accuracy. It also highlights that previous runahead implementations only run for short window lenghts which decreases their effectiveness.

- The paper proposes the continuos runahead. The basic logic is to have a runahead processor which starts to operate on a cache miss, and runs for either a fixed but long window length or until another miss occurs. On a miss the relevant registers and instructions are transfered to the runahead processor. The runahead processor determines the dependence chain for the memory and repeatedly executes it to prefetch the memory.

- The paper discusses different dependence chain selection policies:

	1. PC-Based Policy
	2. Maximum-Misses Policy
	3. Stall Policy
	
- The paper provides an implementation of a continuous runahead engine(CRE) which is implemented as a CPU adjacent unit which is connected to the CPU's registers.

- The paper evaluates the continuous runahead on both a single-core and quad-core system. It shows that for the single-core system it outperforms all prefetchers in the geometric mean but performs worse on specific applications. The paper also provides statistics for prefetcher + CRE systems which show the best performance. On the quad-core sytem the performance recreases and is heavily dependent on the policy to selcet which core to runahead on.

- The paper shows that a Round Robin policy shows the best performance. for the quad-core system. It also again shows that the prefetcher + CER systems give the best performance.

### Retrospective
The retrospective gives a basic explenation of the algorithm as well as a lot of references to related work. It ends in a critisim of current academia and paper review standards.

## Strengths
The paper provides important insight into runahead computation. It clearly outlines the issues of small runahead windows and shows the benefits of increasing them. The paper gives a strong and performant implementation of a CRE which is even more performant when combined with a GHB prefetcher.

## Weaknesses
The paper understates the importance of the area and energy cost incurred by the CRE. The stated 10% of a core are significant and cannot be ignored. The paper also states that this is less than a GHB prefetcher but the discussion on area and power usage falls short. It would be nice to see a clear comparison of the different systems (prefetcher, CRE, prefetcer + CRE), with their respective area and energy costs in both the single-core and the quad-core system. Without that data I cannot fairly asses the viabiltiy of most efficient provided solution which combines both a CRE and a GHB prefetcher.

## My POV
Runahead execution is a very elegant solution to the memory prefetching problem. The combination of CRE and GHB provides a very performant solution. Due to the omission of a detailed area and power analyisis in the paper I cannot draw a clear conclusion on the viability of the system as proposed in the paper.
The paper makes a strong case on a theoretical level by introducing and showing the functioning of continuous runahed which inspired further research.

## Takeaways
- Continuous Runahead is a strong solution to the memory prefetching problem but it also comes at significant area and energy cost.
