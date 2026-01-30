# 4 Review "Feedback Directed Prefetching: Improving the Performance and Bandwidth-Efficiency of Hardware Prefetchers" (4)

## Summary
The paper highlights the issue that more aggressive prefetchers achieve a higher peak performance in certain traces but have also very high performance loss in other traces while moderate prefetchers show a more balanced performance profile. The paper proposes a system to dynamically tune the prefetcher to exploit both the high peak performance of aggressive prefetchers while minimising performance loss for other traces. The paper does this in the following steps:

- The paper shows that aggressive prefetchers, i.e. prefetchers that prefetch a lot of memory, achieve way higher peak performance especially in applications that align with their prefetching strategy. But these same prefetchers lose a lot of performance in other applications as they clog the memory bandwidth and pollute the cache.

- The paper proposes to scale the prefetchers "aggressiveness" with the two parameters `prefetch distance` and `prefetch degree`. By tuning these parameters the amount of prefetched memory can be controlled. In other implementations these are hardcoded values.

- The paper introduces three metrics to evaluate the performance of the prefetcher.

	1. Prefetch Accuracy: This is the amount of useful prefetches per prefetch.

	2. Prefetch Lateness: This is the amount of late prefetches, prefetches that arrive after they are needed and thus still cause a cache miss, per prefetch.
	
	3. Prefetcher-Generated Cache Pollution: This is the amount of cache misses caused by the prefetcher per cache miss.
	
- The paper proposes a system where for a set time interval, in the implementations this is counted in cache accesses, these metrics are evaluated and based on the performance of the prefetcher the `prefetch distance` and `prefetch degree` get tuned dynamically.

- The paper also proposes an extension to the system where depending on the cache pollution the insertion in the LRU order of cache is dynamically tuned.

- The paper evaluates an implementation of the system in a stream prefetcher, a global-history-buffer-based delta correlation prefetcher, and a PC-based stride prefetcher. For all three implementations the paper demonstrates clear performance improvements over conservative and moderate versions over all traces. For the very aggressive strategies there are some cases where the dynamic aggression prefetcher performs worse but on average it also outperforms the aggressive prefetchers.

## Strengths
The paper provides a deep-dive into the concept of dynamic aggresion tuning in prefetchers. In the course of this it outlines strong fundamental concepts that allow prefetcher performance improvement without having to trade off the high peak performance of aggressive prefetching strategies vs. the good median performance of conservative prefetchers.

## Weaknesses
I do not see any clear weaknesses in this paper. The only complaint I have is the need for further research.

## My POV
The paper introduces clear and effective concepts to dynamically tune prefetcher performance. I do not have any concrete criticisms for this paper. While the strategies proposed in the paper aren't state of the art anymore and surely can be improved through further research it nonetheless laid an important foundation.

## Takeaways
- Dynamic prefetcher tuning is essential. Modern prefetchers clearly have evolved beyond these basic metrics but the concepts introduced in this paper are still visible in modern systems.

\newpage