# 8 Review "Revisiting DRAM Read Disturbance: Identifying Inconsistencies Between Experimental Characterization and Device-Level Studies" (40)

## Summary
The paper studies the differences between experimental characterization and device-level studies of read disturbance effects. It does this by running a set of read disturbance attacks on 96 different DRAM chips covering all major DRAM manufacturers.
The paper outlines a major characteristic for each of the two main read disturbance effects (RowHammer and RowPress), which stem from prior works covering device-level read disturbance mechanisms.

- **RowHammer:** Double-sided RowHammer should induce only "1" to "0" bitflips.

- **RowPress:** Single-sided RowPress should induce both "1" to "0" and "0" to "1" bitflips.

The paper makes four relevant observations:  

- Double-sided Row Hammer induces both "0" to "1" and "1" to "0" bitflips.

- For Double-Sided RowHammer the HC_first values of "0" to "1" bitflips are significantly smaller than that of the "1" to "0" bitflips.

- Double-Sided RowHammer induces significantly more "1" to "0" bitflips than "0" to "1" bitflips at maximum aggressor row activation count.

- Single-sided RowPress overwhelmingly induces "1" to "0" bitflips.

Based on these observations the paper provides four takeaways:

- Double-sided RowHammer involves error mechanisms for inducing both "0" to "1" and "1" to "0" bitflips.

- For double-sided RowHammer, the observed error mechanism for "0" to "1" bitflips is stronger than "1" to "0" bitflips in the most vulnerable DRAM cells.

- For double-sided RowHammer, significantly more DRAM cells are vulnerable to the error mechanism for "1" to "0" bitflips than "0" to "1" bitflips when the aggressor rows are hammered enough times.

- For single-sided RowPress, the observed error mechanism of "1" to "0" bitflips is much stronger than that of "0" to "1" bitflips.

Based on this the paper concludes that there are three inconsistencies:

- The experimental characterization shows that double-sided RowHammer induces both "1" to "0" bitflips and "0" to "1" bitflips, which contradicts the first characteristic outlined at the beginning.

- The experimental characterization shows that double-sided RowHammer induces the initial "0" to "1" bitflips easier than the initial "1" to "0" bitflips, which contradicts the first characteristic outlined at the beginning.

- The experimental results show that even with a long aggressor row open time, a high aggressor row activation count , and using both the NWL and PWL as the aggressor rows, the overwhelming majority of single-sided RowPress bitflips are "1" to "0" bitflips, which contradicts the second characteristic outlined at the beginning.

The paper provides two hypotheses where these inconsistencies could arise:

- Existing research on the device-level error mechanisms of DRAM read disturbance are not comprehensive enough to cover all the major leakage mechanisms.

- The state-of-the-art true- and anti-cell reverse engineering technique based on DRAM cell retention failures is incorrect.

## Strengths
The paper clearly demonstrates the inconsistencies in current research and provides solid data to back-up its claims that either device-level research is insufficient or reverse engineering is insufficient.

## Weaknesses
The paper speculates about potential explanations of these inconsiatencies. Most of the proposed ideas are down to insufficient device-level research. The paper fails to realise that it could simply be a case where both the reverse engineering and device-level research is insufficient. In particular on the reverse engineering side, the manufacturers have a clear incentive to make this as hard as possible, so it might very well be that they adjusted their manufacturing processes such that the specific reverse engineering approach does not work.

## My POV
The paper makes a strong case in pointing out the inconsistencies but only provides a very limited analysis of the reasons thereof. From my point of view, while there certainly is a need for more detailed research on the device-level side, even the best simulations at the moment are only approximations, there should also be a concerted effort at looking at the reverse engineering techniques as this is a constant arms race between reverse engineering and manufacturers.

## Takeaways
- There are inconsistencies between device-level studies of read disturbance in DRAM and experimental results.

- Both additional device-level research is needed as well as a review of the state-of-the-art reverse engineering techniques.

\newpage