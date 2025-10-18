# Review 4: "A Logic-In-Memory Computer" by Harold S. Stone

## Summary

This is a paper from 1970. It identifies memory bandwidth as a major bottleneck for computer systems and proposes the then-new idea of computing-in-memory. It also elaborates on possible implementations at a theoretical level.

- The paper explains that there are both magnetic and microelectronic types of memory, with the former being cheaper but slower and the latter being more expensive but faster. While this is not the same issue we face today — where the problem primarily arises from the distance between memory and CPU, as well as the technological differences between DRAM and SRAM — the general issue remains the same: we have a large, slow memory and a small, fast memory, and moving data between them is time-intensive.  
- The paper proposes computing inside the cache, introducing a set of simple instructions that could be implemented. However, the paper is not a concrete implementation; rather, it proposes different use cases and solutions that could be achieved through in-cache computation.  
- The paper acknowledges that it cannot make concrete predictions about the cost of in-memory computation and emphasizes that its feasibility heavily depends on the future development of the technology.

## Strengths

The paper is almost prophetic in its prediction of the bottleneck caused by memory bandwidth. It also lays important theoretical groundwork for in-memory computing. Much of the groundwork done in this paper was later applied in other research, and therefore its impact can be felt even in modern state-of-the-art in-memory computation systems discussed in later papers.

## Weaknesses

There are no clear weaknesses in this paper. The only limitation is that it was clearly ahead of its time, as the memory bottleneck would only become a major issue in the 1990s — a good two decades after the publication of this paper.

## My POV

This paper had an incredible impact on the concept of in-memory computation. It makes very accurate predictions about future issues and proposes significant solutions, even without providing concrete implementations. The paper is an excellent example of proactive thinking — addressing an issue that may not yet be urgent but would become highly relevant in the future.

## Takeaways

- This paper clearly demonstrates the merit of addressing and thinking about future problems before they become pressing issues.  
- It very clearly establishes the foundations of in-memory computation as we know it today.
