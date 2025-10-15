# Review: "A Logic-In-Memory Computer" by Harold S. Stone

## Summary

This is a paper from 1970. It identifies that the memory bandwidth as a major bottleneck for computer systems and proposes the then new idea of computing-in-memory. It also elaborates on possible implementations on theoretical level.
- The paper explains that there is both magnetic and microelectronic memory. And that former is cheaper but slower and the latter is more expensive but faster. While this is not the same issue as we have today, where the issue comes mainly from the distance between memory and CPU as well as the technological difference between DRAM and SRAM, the general issue is still the same. We have a big memory that is slow and a small memory that is fast and moving memory is time intensive.
- The paper proposes computing inside the cache introducing a set of simple instructions which could be implemented. But the paper is not a concrete implementation but rather proposes different use cases and solutions that could be achieved with in-cache computation.
- The paper acknowledges that it cannot make concrete predictions on the cost of in-memory computation and it emphasizes that the fesability heavily depends on the future developent of the technology.

## Strengths

The paper is almost prophetic in its prediction of the bottleneck caused by the memory bandwidth. It also lays important theoretical groundwork for in-memory computing. A lot of the groundwork done in this paper is later applied in other papers and therfore its impact can be feeled up to modern state of the art in-memory computation systems as they are discussed in other papers that are part of this exercise.

## Weaknesses

There aren't any clear weaknesses to this paper. The only thing I can see is that this paper was clearly before its time as the memory bottleneck would only become a problem in the 90s which is a good two decades after the publication of this paper.

## My POV

This paper clearly had an incredible impact on the concept of in-memory computation. It makes very good predictions about future issues and proposes siginificant solutions even if it does not provide concrete implementations. The paper is a very good showcase of proactive thinking addressing an issue that seems important even if that importance only becomes apparent far in the future.

## Takeaways

- This paper clearly shows the merit of addressing and thinking about future problems before they become pressing issues.
- This paper very clearly establishes the foundations of in-memory computation as we know it today.
