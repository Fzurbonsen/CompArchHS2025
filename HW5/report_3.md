# 3 Review "A Case for Bufferless Routing in On-Chip Networks" (3)

## Summary
The paper porposes a bufferless routing scheme for on-chip networks called BLESS. The paper discusses different versions of the BLESS scheme. The core concept is to reduce the network energy consumption with minimal impact on the systems performance, while also reducing the network buffer area.

### Policies

#### FLIT-BLESS

- Each packet is routed independently.

- **Injection Policy:** A processor can safely inject a flit into its router when at least one incoming link is free. This allows for local flow and admission control.

- **Arbitration Policy:** The arbitration happens based on a ranking component, i.e. ranking the prioirty of each packet, and a port-selection component, i.e. each packet ranks the ports. The policy then assigns the highest ranking packte its prefered port, then the second highest ranking, etc.

- **Flit-Ranking:** BLESS implements a simple Oldest-First(OF) policy to rank the flits(packets). This avoids both deadlocks and livelocks.

The main issue with this system is that each flit needs to be a *head-flit* which adds overhead.


#### WORM-BLESS
- Packages are issued as worms where each worm has a head and a tail.

- In a router if the head of a worm is routed to a port, then this port is allocated to the entire worm untill the tail is passed.

- **Injection-Policy:** The policy is the same as for FLIT-BLESS. But if an injection happens in the middle of a worm, then this worm will be truncated and the first packet in the truncated part will be labeled as head.

- **Arbitration Policy:** The arbitration policy stays the same.

- **Flit-Ranking:** The ranking is the same as for FLIT-BLESS.


#### BLESS with Buffers
- **Injection Policy:** The same as WORM-BLESS.

- **Flit-Rnaking:** A *mustSchedule* label is introduced. Now a flit labeld *mustSchedule* will be prioritized.

For all three version here the **Port-Prioritization** has been omitted here, it is given as table in the paper.

### Advantages and Disadvantages

#### Advantages
The paper highlights the following advantages:

- No buffers reduce both complexity and energy consumption.

- Local and simple flow control

- Simplicity and router latency reduction

- Area saving

- Absence of deadlocks

- Absence of livelocks

#### Disadvantages
The paper highlights the following disadvantages.

- Increased latency and reduced bandwidth

- Increasesd buffering at the reciever

- Header transmission with each flit for FLIT-BLESS

The paper backs this up with data collected on a simulated model of the BLESS routing scheme.

## Strengths
The paper has strong fundamentals and the core idea of decreasing complexity and energy consumption by using a buffer-less routing scheme is a very smart approach. The paper clearly outlines both the advantages and disadvantages of BLESS.

## Weaknesses
The paper only provides simulated results which have to be taken with a grain of salt. Otherwise the paper is very well founded and discusses both the advantages and disadvantages in sufficient detail.

## My POV
The decision of whether to use a buffer-less routing scheme like BLESS is clearly a tradeoff. The paper clearly provides the tradeoffs which can be made. In other words the paper is well written and critcal.

## Takeaways
- Buffer-less routing schemes like BLESS have advantages and disadvantages. Therefore it is important to consider the possible tradeoffs when selceting an option in a real system and take into account the priorities and bottlenecks of the whole system.