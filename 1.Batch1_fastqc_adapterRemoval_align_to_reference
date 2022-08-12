#BATCH 1

#Fastqc and adapter removal

!/bin/bash
fastqc  10223_3270_86369_HFWF7BGX9_1_AGTCAA_R1.fastq.gz &
fastqc  10223_3270_86369_HFWF7BGX9_1_AGTCAA_R2.fastq.gz &
fastqc  10223_3270_86370_HFWF7BGX9_2_CGATGT_R1.fastq.gz &
fastqc  10223_3270_86370_HFWF7BGX9_2_CGATGT_R2.fastq.gz &
fastqc  10223_3270_86371_HFWF7BGX9_3_TTAGGC_R1.fastq.gz &
fastqc  10223_3270_86371_HFWF7BGX9_3_TTAGGC_R2.fastq.gz &
fastqc  10223_3270_86372_HFWF7BGX9_4_TGACCA_R1.fastq.gz &
fastqc  10223_3270_86372_HFWF7BGX9_4_TGACCA_R2.fastq.gz &
fastqc  10223_3270_86373_HFWF7BGX9_5_AGTTCC_R1.fastq.gz &
fastqc  10223_3270_86373_HFWF7BGX9_5_AGTTCC_R2.fastq.gz &
fastqc  10223_3270_86374_HFWF7BGX9_6_GCCAAT_R1.fastq.gz &
fastqc  10223_3270_86374_HFWF7BGX9_6_GCCAAT_R2.fastq.gz &
fastqc  10223_3270_86375_HFWF7BGX9_7_CAGATC_R1.fastq.gz &
fastqc  10223_3270_86375_HFWF7BGX9_7_CAGATC_R2.fastq.gz &
fastqc  10223_3270_86376_HFWF7BGX9_8_ACTTGA_R1.fastq.gz &
fastqc  10223_3270_86376_HFWF7BGX9_8_ACTTGA_R2.fastq.gz &
fastqc  10223_3270_86377_HFWF7BGX9_9_GATCAG_R1.fastq.gz &
fastqc  10223_3270_86377_HFWF7BGX9_9_GATCAG_R2.fastq.gz &
fastqc  10223_3270_86378_HFWF7BGX9_10_TAGCTT_R1.fastq.gz &
fastqc  10223_3270_86378_HFWF7BGX9_10_TAGCTT_R2.fastq.gz &

export PATH=/programs/adapterremoval_2.1.1/bin:$PATH

AdapterRemoval --file1 ./10223_3270_86369_HFWF7BGX9_1_AGTCAA_R1.fastq.gz  --file2 ./10223_3270_86369_HFWF7BGX9_1_AGTCAA_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_1
AdapterRemoval --file1 ./10223_3270_86370_HFWF7BGX9_2_CGATGT_R1.fastq.gz  --file2 ./10223_3270_86370_HFWF7BGX9_2_CGATGT_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_2
AdapterRemoval --file1 ./10223_3270_86371_HFWF7BGX9_3_TTAGGC_R1.fastq.gz --file2 ./10223_3270_86371_HFWF7BGX9_3_TTAGGC_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_3
AdapterRemoval --file1 ./10223_3270_86372_HFWF7BGX9_4_TGACCA_R1.fastq.gz  --file2 ./10223_3270_86372_HFWF7BGX9_4_TGACCA_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_4
AdapterRemoval --file1 ./10223_3270_86373_HFWF7BGX9_5_AGTTCC_R1.fastq.gz  --file2 ./10223_3270_86373_HFWF7BGX9_5_AGTTCC_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_5
AdapterRemoval --file1 ./10223_3270_86374_HFWF7BGX9_6_GCCAAT_R1.fastq.gz --file2 ./10223_3270_86374_HFWF7BGX9_6_GCCAAT_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_6
AdapterRemoval --file1 ./10223_3270_86375_HFWF7BGX9_7_CAGATC_R1.fastq.gz --file2 ./10223_3270_86375_HFWF7BGX9_7_CAGATC_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_7
AdapterRemoval --file1 ./10223_3270_86376_HFWF7BGX9_8_ACTTGA_R1.fastq.gz --file2 ./10223_3270_86376_HFWF7BGX9_8_ACTTGA_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_8
AdapterRemoval --file1 ./10223_3270_86377_HFWF7BGX9_9_GATCAG_R1.fastq.gz --file2 ./10223_3270_86377_HFWF7BGX9_9_GATCAG_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_9
AdapterRemoval --file1 ./10223_3270_86378_HFWF7BGX9_10_TAGCTT_R1.fastq.gz --file2 ./10223_3270_86378_HFWF7BGX9_10_TAGCTT_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_10


#Align E. trailli reference genome to Zebra finch genome

export PATH=/programs/satsuma-3.1:$PATH
nohup Chromosemble -n 25 -t GCA_003957565.1_bTaeGut1_v1.p_genomic.fna -q GCA_003031625.1_ASM303162v1_genomic.fna -o /workdir/ncg37_RUSH/ -pseudochr 1 &

#re-aligned genome is pseudochromosomes_etrailli.fasta

bowtie2-build -f ./pseudochromosomes_etrailli.fasta WILLOW_PSEUDOCHR &  

#Align my sequences to reference

bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R1 --rg SM:R1 -1 ./LIBRARY_1.pair1.truncated -2 ./LIBRARY_1.pair2.truncated -U ./LIBRARY_1.collapsed,./LIBRARY_1.collapsed.truncated,./LIBRARY_1.singleton.truncated -S ./R1.sam
samtools view -bS R1.sam > R1.bam
samtools sort R1.bam -o R1_sorted.bam
rm ./R1.sam
rm ./R1.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R2 --rg SM:R2 -1 ./LIBRARY_2.pair1.truncated -2 ./LIBRARY_2.pair2.truncated -U ./LIBRARY_2.collapsed,./LIBRARY_2.collapsed.truncated,./LIBRARY_2.singleton.truncated -S ./R2.sam
samtools view -bS R2.sam > R2.bam
samtools sort R2.bam -o R2_sorted.bam
rm ./R2.sam
rm ./R2.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R3 --rg SM:R3 -1 ./LIBRARY_3.pair1.truncated -2 ./LIBRARY_3.pair2.truncated -U ./LIBRARY_3.collapsed,./LIBRARY_3.collapsed.truncated,./LIBRARY_3.singleton.truncated -S ./R3.sam
samtools view -bS R3.sam > R3.bam
samtools sort R3.bam -o R3_sorted.bam
rm ./R3.sam
rm ./R3.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R4 --rg SM:R4 -1 ./LIBRARY_4.pair1.truncated -2 ./LIBRARY_4.pair2.truncated -U ./LIBRARY_4.collapsed,./LIBRARY_4.collapsed.truncated,./LIBRARY_4.singleton.truncated -S ./R4.sam
samtools view -bS R4.sam > R4.bam
samtools sort R4.bam -o R4_sorted.bam
rm ./R4.sam
rm ./R4.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R5 --rg SM:R5 -1 ./LIBRARY_5.pair1.truncated -2 ./LIBRARY_5.pair2.truncated -U ./LIBRARY_5.collapsed,./LIBRARY_5.collapsed.truncated,./LIBRARY_5.singleton.truncated -S ./R5.sam
samtools view -bS R5.sam > R5.bam
samtools sort R5.bam -o R5_sorted.bam
rm ./R5.sam
rm ./R5.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R6 --rg SM:R6 -1 ./LIBRARY_6.pair1.truncated -2 ./LIBRARY_6.pair2.truncated -U ./LIBRARY_6.collapsed,./LIBRARY_6.collapsed.truncated,./LIBRARY_6.singleton.truncated -S ./R6.sam
samtools view -bS R6.sam > R6.bam
samtools sort R6.bam -o R6_sorted.bam
rm ./R6.sam
rm ./R6.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R7 --rg SM:R7 -1 ./LIBRARY_7.pair1.truncated -2 ./LIBRARY_7.pair2.truncated -U ./LIBRARY_7.collapsed,./LIBRARY_7.collapsed.truncated,./LIBRARY_7.singleton.truncated -S ./R7.sam
samtools view -bS R7.sam > R7.bam
samtools sort R7.bam -o R7_sorted.bam
rm ./R7.sam
rm ./R7.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R8 --rg SM:R8 -1 ./LIBRARY_8.pair1.truncated -2 ./LIBRARY_8.pair2.truncated -U ./LIBRARY_8.collapsed,./LIBRARY_8.collapsed.truncated,./LIBRARY_8.singleton.truncated -S ./R8.sam
samtools view -bS R8.sam > R8.bam
samtools sort R8.bam -o R8_sorted.bam
rm ./R8.sam
rm ./R8.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R9 --rg SM:R9 -1 ./LIBRARY_9.pair1.truncated -2 ./LIBRARY_9.pair2.truncated -U ./LIBRARY_9.collapsed,./LIBRARY_9.collapsed.truncated,./LIBRARY_9.singleton.truncated -S ./R9.sam
samtools view -bS R9.sam > R9.bam
samtools sort R9.bam -o R9_sorted.bam
rm ./R9.sam
rm ./R9.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R10 --rg SM:R10 -1 ./LIBRARY_10.pair1.truncated -2 ./LIBRARY_10.pair2.truncated -U ./LIBRARY_10.collapsed,./LIBRARY_10.collapsed.truncated,./LIBRARY_10.singleton.truncated -S ./R10.sam
samtools view -bS R10.sam > R10.bam
samtools sort R10.bam -o R10_sorted.bam
rm ./R10.sam
rm ./R10.bam

