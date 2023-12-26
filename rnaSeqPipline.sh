#!/bin/bash

cd /Users/jamesshannon/Desktop/Bioinfromatics/

trimmomatic SE -threads 4 -phred33  fastq-files/fastq-files/fastq-files/ERR101899_1.fastq.gz fastq_files/trim_output/output2.trimmed.paired.R1.fastq.gz LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

./HISAT2/hisat2-2.2.1/hisat2 -q --rna-strandness R -x ./HISAT2/hisat2-2.2.1/indexes/GRCh38.p13.genome -U fastq_files/trim_output/output2.trimmed.paired.R1.fastq.gz | ./samtools/bin/samtools sort -o fastq_files/align_output/output2.trimmed.paired.R1.bam
