# 4 Review "Co-Architecting Controllers and DRAM to Enhance DRAM Process Scaling" (17)

## Summary
The paper outlines two key issues facing modern DRAM design.

**First:** Refresh is the process of recharging DRAM cells as they lose their charge due to leakage currents. Therefore each cell has a retention time (tRET) which states how long it can retain a value.

**Second:** Write recovery time (tWR), which is the time it takes to write to the DRAM. More specifically it is the time after the last write data burst to the precharge command issued by the same bank. 

**Third:** Variable retention time (VRT), which is the difference of retention time of different cells.

The paper shows that the retention time is significantly worse for higher temperatures and for newer technology as the smaller scale of the new technology nodes increases the leakage current while also decreasing the capacity of the transistors.

The paper proposes the co-desing of the DRAM and its controller to enhance the scaling of the DRAM process. To this effect it outlines three approaches which could manage the outlined issues.

**First:** Sub-array level parallelism (SALP), the idea is to use the different page buffers to store information from the same bank in parallel.

**Second:** Temperature compensated tWR, the idea is to use different tWR for different temperatures. This works as for lower temperatures tWR needs to increase but for high temperatures it can be lowered.

**Third:** In-DRAM ECC with dummy data pre-fetching, for this on a read the DRAM controller fetches more data than is needed and uses this additional data to be able to perform ECC with less size overhead.

## Strengths
The paper clearly identifies issues which need to be addressed in modern DRAM systems and also proposes solutions for them. While the solutions themselves are not perfect the paper still shows the importance and benefit of using co-designed controllers and DRAM. The idea of using SALP to alleviate the issue of tWR.

## Weaknesses
Some of the solutions proposed are not fully thought through. The idea of using a variable tWR only works if there is a good profiling of the DRAM chip and the necessary tWR for each cell. Further while the use of ECC is promising it might not be sufficient for high workload DRAM chips which run at high temperatures.

## My POV
There are clear advantages to co-designing DRAM and the controller. But the solutions proposed, while good starting points, still need improving. While the idea of lowering tWR depending on temperature seems like a nice idea it makes me worry about the case of variable tWR in the same sense as variable VRT. While I'm not an expert on the subject I see a clear need of further research.

## Takeaways
- Co-designing DRAM and controllers can give significant improvements in performance to the point that it is a necessity for modern technology nodes.

\newpage