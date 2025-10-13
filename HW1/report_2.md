# Review: "A Scalable Processing-in-Memory Accelerator for Parallel Graph Processing"

## Summary

The paper outlines the memory bandwidth bottleneck of modern computer systems and outlines a solution by proposing an Processing-in-Memory accelerator called Teseract. It outlines its design and functionality establishes a perfromence benchmarking methodology and analyses the results. On the conceptual side it makes the following points:

- Modern computer systems are bottlenecked by their memory bandwith as CPUs are limited by their I/O and power pins.
- As a consequence to double the memory that can be computed we need to double the cores which is inefficient.
- An in-Memory processor can provide a way higher memory bandwidth therfore allowing for more efficient scaling.

The paper proposes Teseract with the following design characteristics:

- Teseract is an in-Memory processor that is integrated into DRAM memory.
- Teseract is made up of an In-Order Core, a prefetching system with list and message prefetching. List prefetching allows for prefetching of predictable stride patterns while message prefetching allows the host CPU do pass hints with the instruction as to what memory should be prefetched.
- The host CPU can offload instructions through either blocking or non-blocking function calls to Teseract. Where blocking function calls block the CPU untill a response, a return value, arrives. Non-blocking functions do not require to be waited for as they have no response.

The paper evalutes the Teseract system as follows:

- It uses a set of "interesting" problems that are known to be very memory bandwidth intensive such as graph traversals. Where due to thier lack of spatial and temproal locality a lot of cache misses occur.
- The performance of the Teseract system is compared to a conventional DDR3-based system.
- The Teseract system wastly outperforms the conventional setup on all tests and it is ilustrated that this is a consequence of the memory bandwidth bottleneck in the conventional system.
- A further analysis of Teseracts prefetching and barrier/interruptions is performed where it is shown that the long message queue allows the system to very efficiently perform prefetching.

## Strengths

The paper very clearly illustrates the memory bandwidth bottleneck, it proposes a solution, and demonstrates the solutions performance. The shown Tesract system provides clear advantages in the test cases. I.e. it proves that for high memory bandwitdth computation an in memory processor outperforms a conventional processor by a wide margin. The Teseract system is configurable allowing application not only in the by the paper proposed graph problems but also for other problems that hit the memory bandwidth bottleneck.

## Weaknesses

The paper only shows the performance on a specific set of tests and does not provide any results for tests that would not favour or neccessitate an in-memory processor. While that is not the main point of the paper there is great value to see what costs oder benefits this setup has on other test cases. This would be important to asses wether it is just a very specific solution for a big, but still specific problem or whether it is a general solution.

In the paper it is also stated that the system is cost-efficient but no numbers or further analysis of this is provided. While that clearly is not the core point of the paper it is still important to not only assess the technical but also the financial viability to a greater degree then just stating that it is "cost-efficient" which is an unclear term.

## My POV

I see great value in the exploration of solving the memory-bandwidth bottleneck. And the proposed Tesract system seems very capable and performs exceedingly well on the given tests. I would have included a set of tests that would test conditions unfavourable for the tesreact system. Highly spatially and temporaly local processes would be a very interesting. Further I would be interested in the manufacturing cost of the system. As I am aware that the engineering cost can't fairly be assesed for a reserach project. But the manufacturing cost would give a helpful insight into the actual wide scale viability of the solution.

## Takeaways

- In-Memory processing is a viable way to deal with the memroy bandwidth bottleneck. It provides a solution that is scalable. I.e. not neccesitating the increase of the number of CPUs to provide an increase in memory throughput.
- Memory prefetching can be very powerfull in the right circumstances. If we have ample time between instruction decision and execution or if we have a great deal of knowledge about the following memory accesses (strided access patterns) then memory prefetching allows for very high performance.
