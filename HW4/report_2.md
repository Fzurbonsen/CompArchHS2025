# 2 Review "Error Characterization, Mitigation, and Recovery in Flash-Memory-Based Solid-State Drives" (2)

## Summary
This paper provides a broad overview of errors in flash-memory-based solid-state drives(SSDs) as well as mitigation techniques. It also discusses the effect of future technology on these errors and their prevalence. The paper starts off by describing the state-of-the-art SSD architecture and describing how flash memory works to keep this review short, the description of the functioning of an SSD and flash memory will be omitted in the summary. The digression into similar errors in other memory technologies is also omitted for the same reason.

### Error Characterization

- **P/E cycling errors:** Errors that occur due to failiure in erase operation or the writing operation to a cell. These errors increase over time and are a major symptom of wearout. These errors occur significantly more often in multi-level cells(MLCs) and triple-level cells(TLCs).

- **Program Errors:** Errors that occur when the flash array being read contains errors. And these values are then used to program new data. These stem mainly from two-step or foggy-fine programming, and copyback operations.

- **Cell-to-Cell Program Interference Errors:** Errors that occur due to parasitic capacitance coupling between nearby cells. This effect happens mainly if a neighbouring cell is written to.

- **Data Retention Errors:** Errors that occur due to charge leakage over time after a flash cell is programmed. These are the dominant source of flash memory errors.

- **Read Disturb Errors:** Errors that occur when reading of a cell causes the threshold voltages of other nearby cells to shift to a higher value.

### Error Mitigation

#### Shadow Program Sequencing

Shadow program sequencing tries to ensure that a fully-programmed wordline experiences interference minimally from cell-to-cell program interference. Shadow program sequencing assigns a unique page number to each page within a block. This allows two-step programming to write to pages in increasing order inside a block, such that a fully-programmed wordline experiences interference only from the most-significant bit(MSB) page programming of the wordline directly above it.

#### Neighbour-Cell Assisted Error Correction

This mitigation technique works by using the data values stored in the adjacent wordline to determine a better set of read reference voltages for the wordline being read. This leads to a more accurate identification of the logical data value, as the data in the adjacent wordline was partially responsible for shifting the threshold voltage of the cells in the wordline being read.

#### Refresh Mechanisms

- **Remapping-Based Refresh:** This refresh works by periodically reading data from each valid flash block, correcting any errors, and remapping the data to a different physical location in order to prevent the data from accumulating too many retention errors.

- **In-Place Refresh:** Remapping incurs a cost due to the additional writes it causes and therefore the additional wearout. In-place refresh incrementally replenishes the lost charge of each page at its current location without remapping.

- **Read Reclaim to Reduce Read Disturb Errors:** This refresh works by remapping data in a block that has experienced a high number of reads to a new block.

- **Adaptive Refresh and Read Reclaim Mechanisms:** For the above mentioned refresh mechanisms the controller can either invoke them at fixed regular intervals or adapt the rate at which it invokes the mechanisms. By adapting the mechanisms based on the current conditions of the SSD, the controller can reduce the overhead of performing refresh or read reclaim.

#### Read-Retry

This mitigation allows the read reference voltages to dynamically adjust to changes in distributions. This allows to adapt to changing threshold voltage distributions.

#### Voltage Optimization

Many raw bit errors in NAND flash memory are affected by the various voltages used within the memory to enable reading of values. As a result, optimizing these voltages such that they minimize the total number of errors can greatly mitigate error counts. For this there are multiple approaches.

- Optimizing Read Reference Voltages Using Disparity Based Approximation and Sampling.

- Optimizing Pass-Through Voltage to Reduce Read Disturb Errors.

#### Hot Data Management

Frequently-written pages are called write-hot pages. Analogously pages which are frequently-read are called read-hot pages. On the contrary pages with low access frequencies are called write-/read-cold pages. hot and cold pages have different refresh requirements and different error profiles. Therefore they need to be managed differently.

#### Adaptive Error Mitigation Mechanisms

Adaptive error mitigation mechanisms are capable of adapting error tolerance capability to the error rate. This provides stronger error tolerance capability when the error rate is higher which improves flash lifetime.

- **Multi-Rate ECC:** This mechanism uses a weaker codeword - a codeword that uses fewer bits - when the SSD is relatively new and has less raw bit errors.

- **Dynamic Cell Levels:** A major error source in NAND flash memory is the overlapping of neighbouring voltage distributions. This issue is more prevalent in TLC than in MLC and again more prevelant in MLC than in single-level cells(SLCs). By dynamically adjusting the number of bits stored in the cells these errors can be mitigated.

### Error Correction and Data Recovery Techniques

#### Error Correction Flow with Bose-Chaudhuri-Hocquenghem(BCH) Codes
The data is first corrected by the error-correction-code(ECC) engine by using BCH decoding on the raw data. This reports the total number of bit errors in the data. If the data cannot be corrected by the implemented BCH codes, many controllers invoke read-retry or read reference voltages to lower the raw bit error rate. BCH decoding is hard decoding, where the ECC engine can only use the hard bit value information.

#### Error Correction Flow with LDPC Codes
LDPC decoding consists of three major steps. First, the SSD controller performs LDPC hard decoding, with the optimal read reference voltages. Second, if LDPC hard decoding cannot correct all of the errors, the controller uses LDPC soft decoding. Third, if LDPC soft decoding also cannot correct all of the errors, the controller invokes superpage-level parity.

#### SSD Data Recovery
When the afformentioned correction mechanisms fail, then data loss can occur and the SSD is considered to have reached the end of its lifetime. To recover this data from the SSD, the controller can employ *Retention Failure Recovery* and *Read Disturb Recovery*.

### Emerging Reliability Issues for 3D NAND Flash

The paper states that current issues of 3D NAND flash is different from. But the paper states that with increasing scaling of 3D NAND flash memory it will encounter the same issue as planar 2D NAND flash memory. But issues like cell-to-cell interference will worsen as in a 3D layout each cell has more neighbours.

## Strengths
The paper provides a thorough review of errors in flash-based SSDs as well as the mitigation techniques thereof. The paper also provides a good introduction into the underlying concepts as well as the high level consequences of these issues.

## Weaknesses
I cannot list any concrete weaknesses of the paper.

## My POV
The paper is a very informative summary of prevalent issues in NAND flash SSDs. It really helped me understand these topics. While it does not present a large amount of own research, this is fine as that clearly is not the intention of the paper. The paper rather is a strong educational piece about NAND flash-based SSDs.

## Takeaways
- NAND flash-based SSDs are a very strong technology which comes with its own challenges and error sources. It is necessary to address these error sources to provide functioning computer systems.

- Future technology scaling and 3D stacked NAND flash systems will encounter the same issues and increase the prevalence of these error sources.

\newpage