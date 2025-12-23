# 1 Review "MUltiprocessors and Multicomputers" (1)

## Summary
This paper discusses the concepts of multiprocessors and multicomputers. It starts by outlining that multiprocessors or multicompters which already previously could be used in high-end use cases to speed-up performance could now also be used cost effectively at scale. The paper discusses the different types of hardware architectures of multiprocessors/-computers.

- The paper differentiates between different systems. First it differentiates the application binary interface(ABI). There are shared-memory ABIs where the different threads communicate via a shared memory. There are also Messaging ABIs where the different threads communicate via a messaging system. The paper also differnetiates two different system types. Multiprocessors where you have several CPUs in a single system and multicomputers where you have multiple compute nodes working in tandem.

	- Shared-memory ABI on a shared-memory multiprocessor.
	
	- Messaging ABI on a shared-memory multiprocessos.
	
	- Shared-memory ABI on a multicomputer.
	
	- Messaging ABI on a multicomputer.
	
- The paper discusses the issue of cache cohrerence for shared-memory ABIs. But the paper also outlines that this issue is handled by the cache coherence protocoll which works regardless of the number of agents accessing the memory.

- The paper further discusses several proposed systems and their approach to solve these issues.

- The paper then concludes that multicomputers and multiprocessors have a bright future and as a consequence of them becoming cost effective will be wide spread in the future.
	

## Strengths
The paper does not provide its own research but rather summarizes previous work. It outlines the clear strengths but also hurdles of multiprocessing systems.

## Weaknesses
The paper is basically a literature review. As such it is very informative but in some cases lacks detail and depth.

## My POV
It is clear that the paper was correct with its prediction appertaining to multiprocessing and multicomputing systems. As today basically every systems is a multiprocessing system and parallelization is a major source of speed-up in modern software.

## Takeaways
- Multiprocessing is a powrefull tool to efficiently use a compute system. But it also requires precise communication between different threads.
