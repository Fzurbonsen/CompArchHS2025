# Review: "Ambit: In-Memory Accelerator for Bulk Bitwise Operations Using Commodity DRAM Technology"

## Summary

The paper outlines the restrictions imposed by the memory bandwidth bottleneck and proposes a solution through bitwise memory operations on entire DRAM lines. It does this in the following steps:

- The paper explains that bulk bitwise memory operations - AND, OR, NOT, etc. that are performed on big stretches of contiguous data - are very inefficiently handled in conventional systems as these are very simple instructions that have to be repeated on big amounts of data and thus get bottlenecked by the memory bandwidth.
- The paper introduces the concept of in-memory bulk bitwise operations. It explains on a system of using standard DRAM design to utilize simultanious loading/enableing of memory lines to perform AND and Or operations on entire memory lines. In short: this is possible as the bitlines span orthogonaly to the word lines through the DRAM and share a single sense amplifier for all entries. By activating three lines at the same time the voltage over the three lines is averaged. This gives us a control C and two input lines A,B on which we can perform the following operations: C(A+B) + C'(AB). These are the logic AND for C = 0 and logic OR for C = 1.
- The paper also extends the DRAM structure to allow for logic NOT operation by connecting the inverted signal of the bitline to a dual contact DRAM-cell.
- The paper names the accelerator Ambit and shows that it can be easily integrated into a system as its interface is identical to that of common DRAM allowing easy integration.
- The paper shows that Ambit has both low hardware as well as control overhead compared to conventional DRAM.
- The paper evalueates the performance of Ambit by performing circuit-level-SPICE simmulations as well as providing an analysis of real world example problam being simulated on the system. The SPICE simulation shows that the error rate is low for reasonable process variation and further elaborates that faulty modules could still be used as conentional DRAM as the Ambit accelerator is an extension of convenional DRAM. The runtime performance analysis shows that for database accees with Bitmap indices and BitWeaving Ambit provides significant speedup. Further a bitvector implementation with Ambit is compared to an RB-Tree implementatino and it is shown that for big sets Ambit yields a sgnificant speedup.

## Strengths

Ambit uses already existing technology by being an extension to conventional DRAM. It is also a very smart utilization of already existing processes resulting in a new way to compute within memory allowing it to alleviate the memory bandwidth bottleneck for specific types of computations. The paper also proposes that faulty Ambit accelerators could still be used as conventional DRAM therby reducing yield cost for the manufacturer.

## Weaknesses

The paper does not provide an actual manufactured Ambit acclerator and therefore any of the results persented in the paper are only simulations. It is fair to assume that these simulations are highly accurate but simulated data can never compare to real data and therfore any of the claims have to be taken with a grain of salt. Ambit only implements a very limited instruction set with only AND, OR, and NOT operations. While other binary operations can be constructed from those it is also outlined that the successive loading of memory into the relevant RAM-lines is time intensive. The paper itself does not propose any such implementation end therfore I have to assume that the usecase of the accelerator is limited to situations where the specific operations are the bottleneck.


## My POV

I would see great value in testing a physical implementation of the Ambit accelerator to be able to have real world data to back up the simulations. In general the paper alludes to steps that the manufacturer still has to take to acutally get a working system which undermines the simulated results. Further an exploration of chaining of the AND, OR and NOT operations would have great value to me as it would show to what degree more complex logic could be performed on the accelerator.

## Takeaways

- Ambit introduces a very powerfull solution to parts of the memory bandwidth bottleneck. The concept of computing not just in-memory but with memory seems very powerfull and worthy of further expoloration.
- The results of the paper are the results of simulation and not physical integration which means that all results must be taken with a grain of salt.

