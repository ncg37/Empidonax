#BATCH 3


#Fastqc and adapter removal


!/bin/bash
fastqc 11282_3270_109073_HVYFVAFXY_116A_ATCACG_R1.fastq.gz &
fastqc 11282_3270_109073_HVYFVAFXY_116A_ATCACG_R2.fastq.gz &
fastqc 11282_3270_109075_HVYFVAFXY_203_ACTTGA_R1.fastq.gz &
fastqc 11282_3270_109075_HVYFVAFXY_203_ACTTGA_R2.fastq.gz &
fastqc 11282_3270_109076_HVYFVAFXY_178_CGTACG_R1.fastq.gz &
fastqc 11282_3270_109076_HVYFVAFXY_178_CGTACG_R2.fastq.gz &
fastqc 11282_3270_109077_HVYFVAFXY_432_GAGTGG_R1.fastq.gz &
fastqc 11282_3270_109077_HVYFVAFXY_432_GAGTGG_R2.fastq.gz &
fastqc 11282_3270_109078_HVYFVAFXY_435_ACTGAT_R1.fastq.gz &
fastqc 11282_3270_109078_HVYFVAFXY_435_ACTGAT_R2.fastq.gz &
fastqc 11282_3270_109079_HVYFVAFXY_446_ATTCCT_R1.fastq.gz &
fastqc 11282_3270_109079_HVYFVAFXY_446_ATTCCT_R2.fastq.gz &

export PATH=/programs/adapterremoval_2.1.1/bin:PATH   

AdapterRemoval --file1 ./11282_3270_109073_HVYFVAFXY_116A_ATCACG_R1.fastq.gz  --file2 ./11282_3270_109073_HVYFVAFXY_116A_ATCACG_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 6 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_1
AdapterRemoval --file1 ./11282_3270_109075_HVYFVAFXY_203_ACTTGA_R1.fastq.gz  --file2 ./11282_3270_109075_HVYFVAFXY_203_ACTTGA_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 6 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_2
AdapterRemoval --file1 ./11282_3270_109076_HVYFVAFXY_178_CGTACG_R1.fastq.gz --file2 ./11282_3270_109076_HVYFVAFXY_178_CGTACG_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 6 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_3
AdapterRemoval --file1 ./11282_3270_109077_HVYFVAFXY_432_GAGTGG_R1.fastq.gz  --file2 ./11282_3270_109077_HVYFVAFXY_432_GAGTGG_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 6 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_4
AdapterRemoval --file1 ./11282_3270_109078_HVYFVAFXY_435_ACTGAT_R1.fastq.gz  --file2 ./11282_3270_109078_HVYFVAFXY_435_ACTGAT_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 6 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_5
AdapterRemoval --file1 ./11282_3270_109079_HVYFVAFXY_446_ATTCCT_R1.fastq.gz --file2 ./11282_3270_109079_HVYFVAFXY_446_ATTCCT_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 6 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_6


#Align my sequences to E. trailli reference genome re-aligned to Zebra finch genome


bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R1ad --rg SM:R1ad -1 ./LIBRARY_1.pair1.truncated -2 ./LIBRARY_1.pair2.truncated -U ./LIBRARY_1.collapsed,./LIBRARY_1.collapsed.truncated,./LIBRARY_1.singleton.truncated -S ./R1ad.sam
samtools view -bS R1ad.sam > R1ad.bam
samtools sort R1ad.bam -o R1ad_sorted.bam
rm ./R1ad.sam
rm ./R1ad.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R22 --rg SM:R22 -1 ./LIBRARY_2.pair1.truncated -2 ./LIBRARY_2.pair2.truncated -U ./LIBRARY_2.collapsed,./LIBRARY_2.collapsed.truncated,./LIBRARY_2.singleton.truncated -S ./R22.sam
samtools view -bS R22.sam > R22.bam
samtools sort R22.bam -o R22_sorted.bam
rm ./R22.sam
rm ./R22.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R23 --rg SM:R23 -1 ./LIBRARY_3.pair1.truncated -2 ./LIBRARY_3.pair2.truncated -U ./LIBRARY_3.collapsed,./LIBRARY_3.collapsed.truncated,./LIBRARY_3.singleton.truncated -S ./R23.sam
samtools view -bS R23.sam > R23.bam
samtools sort R23.bam -o R23_sorted.bam
rm ./R23.sam
rm ./R23.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R24 --rg SM:R24 -1 ./LIBRARY_4.pair1.truncated -2 ./LIBRARY_4.pair2.truncated -U ./LIBRARY_4.collapsed,./LIBRARY_4.collapsed.truncated,./LIBRARY_4.singleton.truncated -S ./R24.sam
samtools view -bS R24.sam > R24.bam
samtools sort R24.bam -o R24_sorted.bam
rm ./R24.sam
rm ./R24.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R21ad --rg SM:R21ad -1 ./LIBRARY_5.pair1.truncated -2 ./LIBRARY_5.pair2.truncated -U ./LIBRARY_5.collapsed,./LIBRARY_5.collapsed.truncated,./LIBRARY_5.singleton.truncated -S ./R21ad.sam
samtools view -bS R21ad.sam > R21ad.bam
samtools sort R21ad.bam -o R21ad_sorted.bam
rm ./R21ad.sam
rm ./R21ad6.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R25 --rg SM:R25 -1 ./LIBRARY_6.pair1.truncated -2 ./LIBRARY_6.pair2.truncated -U ./LIBRARY_6.collapsed,./LIBRARY_6.collapsed.truncated,./LIBRARY_6.singleton.truncated -S ./R25.sam
samtools view -bS R25.sam > R25.bam
samtools sort R25.bam -o R25_sorted.bam
rm ./R25.sam
rm ./R25.bam
