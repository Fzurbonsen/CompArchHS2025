# 3 "RowPress: Amplifying Read Disturbance in Modern DRAM Chips" (3)

## Summary
The paper discusses read disturbance effects in DRAM chips. The specific effects they discuss are bit flips cuased by keeping a DRAM row open for a long time. The paper also discusses the characteristics of these read disturbance phenomenon and differenciates it to similar effects such as retention-time and RowHammer. The paper also discusses possible solutions to mitigate the effects of these read disturbance effects which are named RowPress. This is done in the following steps.

- The paper outlines the occurance of read disturbance effects induced by running a RowHammer extended row open timing. They coin the term RowPress to describe an attack that causes bit flips by keeping an aggressor row which is physically adjacent to a victim row open for a long period of time.

- The paper shows that this effect is fundamentally different from both retention time and RowHammer for the following reasons:

	- In previous works it was shown that RowHammer and retention time do not affect the same DRAM cells, i.e. a cell with a weak retention time is not more or less likely to be a RowHammer victim. And a RowHammer victim cell is not more or less likely to suffer from short retention time. The paper shows that RowPress victims are also not correlated to RowHammer victims or weak cells. This means RowPress is indeed a seperate phonmenon from RowHammer and retention time.
	
	- The paper provides data that shows that RowPress is dependent on environment temperature. In general a higher temperature decreases the minimal time an aggressor row needs to be turned on, in a RowPress attack interval, to cause a bit flip in the victim row. This is again different from RowHammer which showed no correlation with environment temperature.
	
- The paper therefore establishes that RowPress is a distinct read disturbance phenomenon which occurs in modern DRAM chips. It further shows that the occurance of RowPress gets worse with newer technology, i.e. smaller technology nodes.

- The paper demonstrates that a simple user side C programm can induce RowPress bit flips in a system and therfore concludes that RowPress is a significant vulnerability in modern systems. It also shows that current RowPress mitigation strategies do not prevent RowPress attacks.

- The paper proposes four strategies to mitigate the risks of RowPress attacks:

	1. Error Correcting Codes (ECC)
	2. Decoupling the Row Buffer from the Row
	3. Limiting the Maximum Row-Open Time
	4. Adapting Existing RowHammer Mitigations
	
	
	The paper elaborates that the first three have prohibitively large cost and therfore proposes to follow the fourth option. This is done by reducing the RowHammer threshold of the existing RowHammer defense to account for the required activations which would cause a RowPress bit flip.

## Strengths
The paper clearly demonstrates the dangers and occurence of RowPress and differentiates it form RowHammer and retention time effects. It clearly outlines the possibility of user-level RowPress attacks on a system as well as the environment and technology dependence of RowPress. The paper also finds a working and easily implementable mitigation strategy to the problem.

## Weaknesses
The discussion of the mitigation strategies is to short and lacking nuance. The paper selects four possible solutions where the purpose of three of them is only to demonstrate ther inefficiency in solving the problem.

## My POV
In my opinion the paper provides an important perspective on the problem of RowPress. From the footnotes and related works it seems that the problem itself is alredy known to the industry but the paper provides an important in-depth analysis of the issue and proposes an efficient solution.

## Takeaways
- RowPress induced read disturbance is an important issue that needs addressing in modern DRAM chips.

- The issue of RowPress (as well as RowHammer and retention time) gets worse with smaller technologies. Therfore it is important to address these issues in modern systems and keep loking for possible attack vectors of malicious actors in modern computer systems.