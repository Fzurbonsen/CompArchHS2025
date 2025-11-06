# 1 Review "Self-Optimizing Memory Controllers: A Reinforcement Learning Approach" + Retrospecitve (1)

## Summary

### Paper
The paper discusses off-chip DRAM bandwitdth and proposes a reinforcement learingn (RL) approach to optimize DRAM scheduling. It simulates the propesed systems and discusses the results. The paper does this in the following steps:

- The paper establishes that previous DRAM scheduling was based on ad hoc heuristcs such as first-ready first-come first-served (FR-FCFS). These are chosen as the best working solutions on an average of performance cases.

- The paper proposes an online RL approach which work by integrating an RL algorithm into the DRAM-controller which takes a set of inputs from its environment and based on their state decides which action to schedule.

- The RL approach has two main changes to the previous approach. It optimises based on a set of parameters given by the system and is not an ad hoc chosen heuristc. While this does not ensure optimal performance it turns out to be a better aproach and can be tuned by modifing the learning behaviour of the RL algorithm. Further the RL approach is an online method which means that it can adapt to changes in the needs of the running program.

- The paper proposes a theoretical hardware implementation and evaluates the hardware overhead as the logic required to compute the state attributes, the logic required to estimate and update the Q-values in the RL model, and the SRAM to store the Q-values.

- The evaluation shows that the RL approach outperforms FR-FCFS on all single core systems and on all but one multi core system. The paper shows that even an offline RL approach outperforms FR-FCFS. Further the paper shows that these performance gains are due to the RL method and not due to the additional information granted to the RL-algorithm by creating an FR-FCFS version that has the same level of avareness of the system.

### Retrospective
The retrospective provides contex for the paper mainly as to the process of coming up with and exploring the RL approach. It also outlines the significance of the paper and its impact on future research and systems.

## Strengths
The paper correctly assesed the need for inovation in DRAM scheduling and proposes a strong and performant solution for the issue. The RL solution and giving the DRAM controller a higher level of awareness of its environment is a smart approach to increase the efficiency. The results of the paper and its level of impact stand for them self in showing the relevance of the research presented.

## Weaknesses
While the paper provides an overview of the physical overhead it does not provide a full picture meaning that the proposed solution was fairly far away from an actual implementation.
The paper only proposes a very basic approach to RL to optimise the performance of the DRAM controller but a more sophisticated approach could yield far better results.

## My POV
The paper clearly was an important milestone in the development of modern DRAM controllers. I do not see a specific criticism to the paper but it is clear that the method due to its novelty has not reached the level of sophistication required for an actaul implementation in a real system. This is the only direct issue I have with the paper and it is one that was alleviated by follow-up research.

## Takeaways
- While ad hoc heuristcs can give a good baseline performance they are an indicator for a possible system inefficiency.
