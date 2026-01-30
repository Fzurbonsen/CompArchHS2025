# 6 Review "Route Packets, Not Wires: On-Chip Interconnection Networks" (26)

## Summary
The paper gives an overview of on-chip interconnection networks. The paper starts of by outlining the concept of interconnection networks.

- The chip is split into routers, dependent on the on chip system this could for example be individual CPUs in a multiprocessor network.

- Each router provides in- and output-ports to handle incoming and outgoing data.

- Data is sent in packets, which start with a head and end with a tail. Metadata is passed with the packet to allow each router to dynamically decide on the routing and prioritization of the packets.

The paper suggests a system with a simple interface that allows for customization of higher level protocols. The paper further discusses different advantages protocols could provide on a network.

- Fault-tolerant protocols which allow identification of faulty bits in the transmitted data.

- Pre-scheduling protocols which allow predictable data to be scheduled ahead of time and then to be combined with dynamic traffic in the moment.

The paper also discusses different network topologies such as a simple grid or mesh topology, which provides an even distribution but high pin count. Also the torus topology is proposed to allow for fewer routing hops at the cost of longer transmission time.

Lastly the paper argues that on-chip networks while they do incur a significant area overhead, estimated at 6.6%, their benefits in terms of reduction of parasitics and increase in routing efficiency  outweigh these detriments.

## Strengths
The paper provides a clear and strong vision for the implementation of on-chip interconnection networks in processors.
The proposed routing system provides a resilient and dynamic approach to the on-chip communication.

## Weaknesses
There are no big weaknesses in this paper except that clearly further research was still required at time of publishing to allow this technology to mature.

## My POV
On-chip interconnection networks are common on modern multiprocessors and similar systems. In other words, the paper correctly estimated the incredible effectiveness of on-chip networks. The paper is not very specific in its analysis and gives a high level overview of the concept. Therefore there is not much to criticise or improve on.

## Takeaways
- On-chip interconnection networks are here to stay and provide an efficient solution to the problem of on-chip communication.

\newpage