# 2 Review "CoNDA: Efficient Cache Coherence Support for Near-Data Accelerators" (2)

## Summary
The paper proposes a cache coherence protocol for near-data-accelerators(NDAs) called CoNDA. This is motivated by the increased research in NDAs and their performance benefits. The paper proposes several solutions outlining their benefits and determents. The paper evaluates the performance of CoNDA on a diverse set of tests.

- The paper first outlines that recent trends, partially due to the advancement in 3D stacking, have shown an increase in NDA systems. Therefore the paper identifies the need for an efficient NDA cache coherence protocoll.

- The paper proposes several cache coherence protocolls for NDAs.

	- Non-Cachable Approach, sidestepping coherence.
	
	- Coarse-Grained Coherence, where a single coherence permission is used that applies to the entire NDA data region.
	
	- Fine-Grained Coherence, which is analogous to the traditional MESI cache coherence scheme.
	
- The paper concludes for these initial proposals that all have significant drawbacks and in response propose CoNDA. CoNDA is an optimistic cache coherence polcy. This means that the NDA kernel executes assuming that no confilict occurs. It does not write back to the cache until it terminates execution and then checks whether an actual conflict has occured. If that is the case this conflict is then resolved. This has the advantage of moving all coherence operations to the end of the NDA kernels exectuion which avoids large continuous data movement which incurrs high energy cost.

- The CoNDA approach is based on the observation that most NDA kernels have very few conflicts with CPU threads and therfore an optimistic approach performs very good on average even if it has a very bad worst case performance.

- CoNDA hides the coherence from the programmer. Therefore the NDA kernel thread can be treated the same as any other CPU thread. It also provides synchronization primitives which are very similar to normal multithreaded execution.

- The paper evaluates CoNDAs hardware overhead and concludes that it only uses a minimal amount of DRAM an increases the NDA L1 cache by 1.6%.

- The evaluation of CoNDA shows a significant decrease in off-chip data movement, the best performance over all tested alternatives (not counting the ideal implementation), lowest energy consumption over all tested alternatives (not counting the ideal implementation). The paper also shows that the relative improvements hold for more stacks as well as for large datasets.

## Strengths
The paper provides a simple but clear coherence protocoll for NDAs that shows good performance in the used test cases. The paper also provides a thurough evaluation of the performance and data movement of the protocoll.

## Weaknesses
The paper only provides simulated results which therefore have to be taken with a grain of salt. As there is no previous work which can be compared to the paper only compares to a only-CPU baseline, an ideal system, and some hypothetically bad implementations. Therefore the concrete ideallity of the system cannot be evaluated fairly without having more context/research. While the average performance of CoNDA is remarkable its worst case performance is very bad. There is no evaluation of its worst case performance given in the paper.

## My POV
The increase of NDA systems necessiates reasearch of NDA cache coherence protocolls. This paper is an important first step but further research is need to fairly evaluate the performance of CoNDA. The worst case performance of CoNDA could be never terminating as it might be possible that some code in the CPU could always invalidate the NDA kernels result, mainly for a long NDA part, which could always cause a conflict at the end of execution which further always causes recomputation in the NDA. In short there is a lack of exploration of worst case performance.

## Takeaways
- CoNDA is a strong contender as a NDA cache coherence protocoll, but without further research this cannot be asessed fairly.