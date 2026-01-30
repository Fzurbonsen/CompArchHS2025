# 7 Review "An Experimental Characterization of Combined RowHammer and RowPress Read Disturbance in Modern DRAM Chips" (45)

## Summary
The paper evalutes a method to combine RowHammer and RowPress read disturbance on medern DRAM chips. For this purpouse the method was tested on a wide array of different DRAM chips from all three major DRAM manufacturers. The paper makes the following key observations:

- As the time the aggressor row is turned on initially increases, the combined RowHammer and RowPress pattern takes much less time to induce the first bitflip compared to both the conventionale single- and double-sided RowPress patterns.

- As the time the aggressor row is turned on initially starts to increase, the combined pattern needs slightly more aggressor row activations to induce at least one bitflip than the conventional double-sided RowPress pattern.

- As the aggressor-on time continues to increase, the combined pattern takes a similar amount of time to induce the first bitflip as the conventional single-sided RowPress pattern.

- As tha aggressor-on time incresases, the directionality of bitflips caused by the combined RowHammer and RowPress pattern changes.

- The overlap between the bitflips from the combined pattern and conventional single-sided RowPress pattern increases as the aggressor-on time increases.

- The overlap between the bitflips from the combined pattern and conventional double-sided RowPress pattern first decreases as the aggressor-on time initially starts to increase, and then increases as the aggressor-on time continues to increase.

From these Observations the paper poses two hypotheses:

- As the aggressor-on time initially starts to increase, the read disturbance effect caused by RowPress from one of the two aggressor rows in the double-sided pattern is much more significant than the other.

- For large aggressor-on time values, the read disturbance effect from RowPress is dominant compared to RowHammer in the combined RowHammer and RowPress pattern.

The paper outlines two takeaways:

- Read disturbance bitflips can be induced in a smaller amount of time by combining RowPress and RowHammer compared to using solely RowPress or RowHammer.

- The combined RowHammer and RowPress pattern induces different bitflips compared to the conventional single- and double-sided RowPress patterns.


## Strengths
The paper has a rigorous and broad minded approach. It successfully demonstrates that combined RowHammer and RowPress is more effective than only RowHammer or RowPress in isolation.
The paper also provides a good analysis of the different appearing bitflip patterns, i.e. the change of bitflip direction with increasing aggressor-on time.

## Weaknesses
The paper only provides a short introduction into how the combined algorithm works which only works well if one is already well versed in the subject of read disturbance. 

## My POV
The paper is a straight-forward analysis of a specific read disturbance scheme and its implementation on a set of DRAM chips. It clearly demonstrates the dangerous efficiency of combining RowHammer and RowPress to induce bitflips.

## Takeaways
- Combining RowPress and RowHammer provides a scheme which is faster in causing bitflips than using only RowPress or only RowHammer.

- In the combined scheme the directionality of bitflips changes with increasing aggressor-on time.