# 7 Review "A QoS-Enabled On-Die Interconnect Fabric for Kilo-Node Chips" (30)

## Summary
The paper outlines the issue for larger chips with hundreds to thousands of on-chip components that require communication old network-on-chip designs don't work well due to high area, energy, and buffer overheads. This issue is especially pronounced when quality-of-service (QoS) guarantees are needed. The paper thus outlines Kilo-NoC which addresses the issues as follows:

- The paper introduces a hybrid NoC architecture that co-optimizes topology, flow control, and QoS by creating subnetworks and providing interconnections between these subnetworks.

- The paper introduces a topology aware QoS scheme taht limits hardware QoS support to the dimensionalty requriements of the packets.

- The paper introduces a lightweight elastic buffer (EB) flow control that embeds buffering in links which minimizes the overall buffer cost.

The paper also evaluates Kilo-NoC its results show a substantially lower area and energy compared to stat-of-the-art QoS-enabled NoCs, while maintaining strong service guarantes.

## Strengths
The proposed splitting of the interconnection networks into subnetworks or different dimensions is a strong contender to allow efficient routing as a lot of routing happens locally.
The elastic buffer approach greatly diminishes buffer stoarage requirements, which are a major cost driver in richly connected topologies.

## Weaknesses
The proposed solution comes with a high complexity which can draw significant cost in an actual physical implementation. The paper also only provides simulated results which always have to be taken with a grain of salt.

## My POV
The paper makes a strong case for complex interconnection topologies to handle large on-chip interconnection networks. Similar technology is in use in modern multiprocessors which clearly emphasises strenght of some of the ideas outlined in the paper. It would still be intersting to see the actual results of the network if they had been phyisically implemented.

## Takeaways
- Complex, high component chips require novel solutions to routing. This is an issue that will not lessen in the future but become more prevelant as even today the number of components on a chip increases.