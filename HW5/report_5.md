# 5 Review "Validity of the single processor approach to achieving large scale computing capabilities" (5)

## Summary
This paper is a discussion about the validity of the single processor approach versus the multiprocessor approach. The paper outlines that a certain part of the runtime of any program has to be computed serially. The paper further states that to be able to harness the positive effects of parallel computing one must equivalently improve the serial components of the computation.
The paper introduces a law which relates the speedup to the inverse of the serial part times the parallel part divided by the number of parallel threads.

## Strengths
The paper highlights the issues with parallel computing and the prevalent issues at the time of writing the paper. It also introduces a law to estimate the possible speed-up of a parallel system.

## Weaknesses
While the paper was clear in its deductions and was valid at the time, it is clear now that parallel computing is the future. While this is still in line with the predictions of the paper, i.e. the serial part of computation has been improved significantly, it is still important to state that the overall conclusion of the paper has been proven false.

## My POV
The paper is dated but introduced the important concept of Amdahl's Law which governs parallel computation to this day. While the progress has outgrown the predictions made in this paper it is still an important piece of research.

## Takeaways
- Any parallel process always has a serial component which cannot be disregarded. The system performance can be computed with Amdahl's Law

\newpage