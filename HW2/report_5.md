# Review: "VRL-DRAM: Improving DRAM Performance via Variable Refresh Latency" (5)

## Summary

The paper discusses the impact of the DRAM charge time during refresh operations on the performance of a DRAM. It provides a simulator the charging and leakage of DRAM-cells and it proposes a system to more efficiently recharge DRAM-cells called variable latency refresh DRAM.

- The paper shows that 40% of the recharge time when recharging a DRAM-cell is spent charging the last 5% of the cell. It supposes that if at least for some recharges a cell is only charged to 95% instead of 100% a siginificant speedup in the recharge operation can be achieved.

- The paper provides an open-source model to simulate the recharge latency.

- The paper introduces a model where for each cell the DRAM-controller keeps track of its last recharges and decides whether to fully or only partially recharge the cell. This model is designed to work within the volatile constraints given by process variation.

## Strengths

The paper makes a strong case for variable recharge rates and provides a high-value, open-source model to simulate this process. The model is shown wo be accurate by comparison with SPICE which is state-of-the-art and it is shown to be faster then SPICE. The paper also proposes a solution for the problem it discusses by introducing their VRL-DRAM controller extension.

## Weaknesses

The provided solution is only a concept and is not tested on a wide set of parameters. While there is merit in further pursuing the direction, the paper only gives an initial impulse which is far from a real solution to the problem. The open-source solution is locked behind a contact wall on gitHub which does not make it not open source but limits the ease of access.

## My POV

The porposed VRL-DRAM model is a valuable tool the effectiveness of which I cannot assess. I find the proposed solution to be too far away from an actual implementation to fairly assess it and don't quite understand its place in this paper as the main contribution seems to be the VRL-DRAM model.

## Takeaways

- The recharge latency of DRAM-cells is an important paramter and the refrech times are variable given the correct methodology.

- The provided model is a valuable contribution to future research.
