# 9 Review "Panopticon: A Complete In-DRAM Rowhammer Mitigation" (54)

## Summary
The paper first starts by outlining that previous Rowhammer mitigation techniques incurr prohibitively high costs on the manufacturers which is why none of them have been adopted widely. The paper proposes Panopticon as a complete In-DRAM Rowhammer mitigation technique, i.e. it does not require changes to the system stack, especially the memory controller, it does not require the manufacturers to share proprietary information about victim cells, it does not require large amounts of SRAM or other types of additional memory, and it does not violate DDR4 protocols. The implementation uses some key ideas:

- Panopticon maintains a counter table in-DRAM where each counter corresponds to a DRAM row and increments each time the corresponding row is activated.

- Panopticon keeps a Rowhammer thershold bit instead of a Rowhammer threshold value, this removes the need to reset the counters as this is an expensive operation in DRAM.

- Panopticon keeps a service queue. When a threshold bit is flipped, i.e. the counter for a row is full, this row is enqueud in the service queue. Panopticon issues the ALERT signal to the memory controller to create space for the mitigation refreshes.

- Panoticon does not fully reset its counters when a regular refresh happens to a line but clears some of the counters lower bit values. The precise count depends on the implementation.

- Physically Panotpicon comprises of a set of narrow DRAM mats which store the counters and a small piec of logic for each counter mat as well as a state machine in each bank that implements the service queue and the ALERT signaling.

## Strengths
The paper provides a strong solution which is limited to DRAM only and does not violate DDR4 protocols or creates the need to share proprietary information about the DRAM.
Panopticon uses some very strong ideas to simplify its logic, such as using a threshold bit instead of a threshold value as well as the clearing of lower order bits to decrease the counters.

## Weaknesses
Panopticon is implemented in DRAM. Depending on the implementation it itself could be susceptible to RowHammer or RowPress attacks which especially in the case of targeting the counters could enable denial of service (DoS) attacks.
The proposed desing of Panopticon leaves open space on the DRAM chip which means wasted space in an already thight environment. While the authors reason that this provides space for testing logic, etc. this rather seems like a detrement to the implementation and its viability.

## My POV
While the paper makes a strong case for Panotpicon, the two weakneses outlined above are significant. To mitigate the first a sufficient degree of separation in DRAM is needed beteween the counters and the rest of the DRAM but this in itslef worsens the second issue which is the inefficient space usage. But it could be possible that a smart layout might solve these issues.
The paper provides no results on the actual performance of the proposed system.

## Takeaways
- While many Rowhammer mitiagtion techniques have been proposed, none have found wide spread application. The reason for this is their prohibitive cost.

- Panopticon provides a solution to this issue and employs smart ideas to reduce the implementation cost of Rowhammer mitigation.

- Panotpicon still has shortcomings and further research is clearly needed in the area of Rowhammer mitigation.