# Report Lab 5: Memory Request Scheduling

## Task 1

### Questions

---

**Question 1:** What kind of a memory system does this configuration specify? Name as many specifications as you can about this system.

The config file is split into two sections, the Frontend and the MemorySystem. We are interseted in the MemorySystem. The system implements generic DRAM. It uses DDR4 with 8GB. The DRAm has 1 channel and 1 rank. The timing corresponds to DDR4 2400R. The controller has a FR-FCFS scheduling policy and uses the AllBank refresh implementation. The Address mapper is RoBaRaCoCh. (The MemorySystem also has a clock_ratio of 3.)

---

**Question 2:** How do you change the input trace file(s) for the SimpleO3 frontend? How do you change how many CPU cycles that Ramulator 2 is going to simulate?

Ramulator is run with the command `./ramulator2 -f config_file.yaml`. To change the input trace we need to change the `traces:` section in the config file. We cannot set the number of cpu cycles but we can change the amount by adjusting the `num_expected_insts:` value in the config file.

---

**Question 3:** Run a four-core multiprogrammed simulation with two cores running the “L” trace (i.e., `low-mem-intensity.trace`) and the other two running the “H” trace (i.e., `high-mem-intensity.trace`). Hint: the traces key expects a list as its value in the configuration file.
Compare the instruction per cycle (IPC) of the application that is running alone (i.e., single-core) versus running together with other applications (i.e., multi-core), how different are they? Briefly explain why.

| Core | Trace |Cycles Recorded | Instructions | IPC  |
|------|-------|----------------|--------------|------|
| 0    | L     | 93159          | 300000       | 3.22 |

| Core | Trace |Cycles Recorded | Instructions | IPC  |
|------|-------|----------------|--------------|------|
| 0    | H     | 498311         | 300000       | 0.60 |

| Core | Trace |Cycles Recorded | Instructions | IPC  |
|------|-------|----------------|--------------|------|
| 0    | L     | 134055         | 300000       | 2.24 |
| 1    | L     | 137983         | 300000       | 2.17 |
| 2    | H     | 720447         | 300000       | 0.42 |
| 3    | H     | 710170         | 300000       | 0.42 |

We can clearly see that for both traces "L" and "H" we have a preformance loss of ~30% in the multi-core system relative to the single-core system. This is due to the multiple cores contending for the limited memory access.

---

**Question 4:** What does the “TraceRecorder” plugin do?

The TraceRecorder plugin logs each memory instruction issued to the controller. It creates a trace file for each channel that holds the instructions issued via this channel. The trace file contains the memory clock cyle, i.e. the timing information, the memory command (ACTIVATE, READ, WRITE, PRECHARGE), and the memory address vector, i.e. the informaiton about the memory address being accessed.

---

**Question 5:** What is the difference between a FCFS scheduler and FRFCFS scheduler? How does it impact system performance?

FCFS stands for Firs-Come-First-Served this means that the commands are scheduled in the order that they arrive in the memory controller.

FR-FCFS stands for First-Ready First-Come-First-Served. This means that the top priority is the command that is ready the eraliest. If two commands are ready in the same cycle then the decision is made via with FCFS as described above.

| Core/Trace | FR-FCFS IPC | FCFS IPC |
|------------|-------------|----------|
| Core-0/L   | 2.24        | 0.87     |
| Core-2/H   | 0.42        | 0.14     |

From the table we can clearly see that FR-FCFS performs a lot better than FCFS. This makes intuitive sense as memory commands can only be serviced when they are ready but FCFS sometimes prioritizes a command that is ready later but arrived eralier than another command. FR-FCFS addresses precisely this issue and the impact can clearly be seen in the data.

---
