#!/bin/bash

# Going to the directory where the fastq files are located
cd /Users/jamesshannon/Desktop/Bioinfromatics/

# Using trimmomatic to trim the fastq files
trimmomatic SE -threads 4 -phred33  fastq_files/fastq_files/fastq_files/ERR101899_1.fastq.gz fastq_files/trim_output/output2.trimmed.paired.R1.fastq.gz LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

# Using HISAT2 to align the trimmed fastq files to the reference genome
./HISAT2/hisat2-2.2.1/hisat2 -q --rna-strandness R -x ./HISAT2/grch38/grch38/genome -U fastq_files/trim_output/output2.trimmed.paired.R1.fastq.gz | ./samtools/bin/samtools sort -o ./Bam_files/output2.trimmed.paired.R1.bam
