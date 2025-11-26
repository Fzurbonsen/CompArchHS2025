# 1 Review "Architecting Phase Change Memory as a Scalable DRAM Alternative" (1)

## Summary
This paper proposes to use phase change memory (PCM) instead of DRAM. The main claims are that PCM is more scalable then DRAM. The paper proposes an architecture that reduces the performance difference of energy and delay between DRAM and PCM from 1.6x and 2.2x to 1.2x and 1.0x. The paper does this with the following steps:

- The paper outlines the issue of DRAM scaling. Specifically that with smaller technology nodes the capacity of the cells decreases and their leakage current increases.

- The paper claims that with some simple architectural changes PCM can achieve a similar performance to DRAM while being more scalable as its memory is non-volatile.

- The paper explains the functioning of a PCM cell. The basic logic is that a cell is comprised of two electrodes separated by a resistor and phase change material. By injecting a current into the phase change material a phase change is caused which is the stored data.

- The paper discusses the issue of high delay time of PCM which boil down to approximately 4.4x DRAM read delay and 12.0x DRAM write delay. It also acknowledges that PCM incurrs higher energy costs than DRAM. It proposes a novel buffer organization where by using narrower but more buffers these shortfalls can be can be compensated.

- The paper provides simulated test results that show that PCM works at roughly the same delay times and energy consumption as DRAM. They also calculate hypothetical endurance values of the PCM.

## Strengths
The paper identifies the important issue of DRAM scaling and proposes a solution. With PCM it provides a possible alternative to DRAM and it shows that under certain conditions it can perform on a similar level to DRAM

## Weaknesses
The paper only provides simulated results which are way weaker than results from physical implementation. The paper estimates PCM lifetime with un verified back of the envelope calculations. These cannot be taken seriously as they are provided. Even in the best case PCM is barely as good as common, not high performance, DRAM.

## My POV
Time has clearly shown that PCM is not a widescale-viable replacement to DRAM. DRAM, whil not perfect, proofed surprisingly scalable compared to the predictions in this paper. The values provided in the paper seem somewhat detatched from reality and it seems as if parameters and configurations were specifically chosen to present PCM in the best possible light.

## Takeaways
- PCM is a technology which can act as areplacement to DRAM but is not wide-scale viable.