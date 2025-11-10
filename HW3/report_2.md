# 1 Review "Flipping Bits in Memory Without Accessing Them: An Experimental Study of DRAM Disturbance Errors" + Retrospecitve (2)

## Summary

### Paper
The paper discusses the concept of user induced bit-filps in DRAM memory. It investigates its causes as well as its security implications. The paper demonstartes the prevelance of these bit-flips on commercial DRAM chips and proposes a set of possible mitigation strategies. It does this in the following steps:

- The paper introduces the concept of RowHammer. The basic idea is that the state of a DRAM cell can be influenced by repeatedly loading adjacent DRAM-rows. This can be executed by user programs menaing that an unprivileged user can corrupt the memory of any system that uses vulnerable DRAM.

- The paper tested RowHammer on a broad set of DRAM models from three unspecified manufaturers ranging from the year 2010 to the year 2014. The paper's results show that the bit errors only occur in more modern chips the manufacturing times of which align with process upgrades by the respective manufacturers. This is explained to be a consequence of more modern smaller technology being more vulnerable due to the lower capacitance of the cells and denser packing on the chip.

- The paper also demonstrates that RowHammer mainly causes bit-flips from physical 1 to physical 0 meaning a decrease in voltage. It also shows that counterintuitively there is no correlation between "weak cells" and RowHammer victim cells. The paper also shows that RowHammer is "strong enough" to circumvent error correction as commonly implemented.

- The paper proposes seven possible mitigation strategies to RowHammer:

    - Make better chips
    
    - Correct errors

    - Refresh all rows frequently

    - Retire cells (manufacturer)

    - Reitre cells (end-user)

    - Identify "hot" rows and refresh neighbours.

    - PARA (pobablistic adjacent row activation)

- The paper outlines that the first six all come at signifcant cost and proposes PARA as the "best" solution. PARA is a methodology that randomly refreshes adjacent rows when a row is activated. The paper outlines that to implement this the manufacturers have to share their mapping functions of the DRAM as well as their remapping methodology. This is necessary to identify adjacent rows.

### Retrospective
The retrospective gives context to the creation of the paper and outlines the cooperation between the researchers and the industry. It also discusses the widespread impact of RowHammer outlining that both manufacturers as well as other industry participants performed their own resarch and proposed solutions as well as methods to exploit RowHammer.

## Strengths
The paper was the first to draw attention to a big gap in hardware security. It clearly demonstrates the issue and its prevelance on a vide variety of chips. It further shows that RowHammer is an issue only becoming more important over time due to smaller technology being more vulnerable to RowHammer attacks. The paper proposes a good set of strategies to deal with RowHammer and comments on their effectiveness and feasability. Mainly its PARA propoasal seems to have gained tracktion in later works as well as industry implementations.

## Weaknesses
The main weakness of the paper is the proposed solution PARA. It uses a set probability $p$ to decide wether a refresh is performed. But as there are no true random processes in a computer it is possible to reconstruct the coin-flip. If a malicious actor can deduce the coin-filp the he can completely circumnavigate the PARA security method by switching to another line whenever a refresh is imminent.

## My POV
The RowHammer paper is a seminal work that has caused much discussion and change of thought in the industry. While its solutions might not be perfect it still draws attention to an important topic and exposes the vulnerability of computer systems. By highlighting this weakness it has become an important contribution to modern computer architecture.

## Takeaways
- RowHammer attacks are both dangerous and hard to prevent. While they are still complicated to implement it is clear that the threat of RowHammer attacks does not decrease with ever smaller technology.
