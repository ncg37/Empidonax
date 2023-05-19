#BATCH 2

#Fastqc and adapter removal


!/bin/bash
fastqc 10750_3270_97435_HW7FCBGX9_2_CGATGT_R1.fastq.gz &
fastqc 10750_3270_97435_HW7FCBGX9_2_CGATGT_R2.fastq.gz &
fastqc 10750_3270_97436_HW7FCBGX9_3_TTAGGC_R1.fastq.gz &
fastqc 10750_3270_97436_HW7FCBGX9_3_TTAGGC_R2.fastq.gz &
fastqc 10750_3270_97437_HW7FCBGX9_4_TGACCA_R1.fastq.gz &
fastqc 10750_3270_97437_HW7FCBGX9_4_TGACCA_R2.fastq.gz &
fastqc 10750_3270_97438_HW7FCBGX9_5_ACAGTG_R1.fastq.gz &
fastqc 10750_3270_97438_HW7FCBGX9_5_ACAGTG_R2.fastq.gz &
fastqc 10750_3270_97439_HW7FCBGX9_6_GCCAAT_R1.fastq.gz &
fastqc 10750_3270_97439_HW7FCBGX9_6_GCCAAT_R2.fastq.gz &
fastqc 10750_3270_97440_HW7FCBGX9_7_CAGATC_R1.fastq.gz &
fastqc 10750_3270_97440_HW7FCBGX9_7_CAGATC_R2.fastq.gz &
fastqc 10750_3270_97441_HW7FCBGX9_8_ACTTGA_R1.fastq.gz &
fastqc 10750_3270_97441_HW7FCBGX9_8_ACTTGA_R2.fastq.gz &
fastqc 10750_3270_97442_HW7FCBGX9_9_GATCAG_R1.fastq.gz &
fastqc 10750_3270_97442_HW7FCBGX9_9_GATCAG_R2.fastq.gz &
fastqc 10750_3270_97443_HW7FCBGX9_10_TAGCTT_R1.fastq.gz &
fastqc 10750_3270_97443_HW7FCBGX9_10_TAGCTT_R2.fastq.gz &
fastqc 10750_3270_97444_HW7FCBGX9_11_GGCTAC_R1.fastq.gz &
fastqc 10750_3270_97444_HW7FCBGX9_11_GGCTAC_R2.fastq.gz &
fastqc 10750_3270_97445_HW7FCBGX9_12_CTTGTA_R1.fastq.gz &
fastqc 10750_3270_97445_HW7FCBGX9_12_CTTGTA_R2.fastq.gz &
fastqc 10750_3270_97446_HW7FCBGX9_13_AGTCAA_R1.fastq.gz &
fastqc 10750_3270_97446_HW7FCBGX9_13_AGTCAA_R2.fastq.gz &
fastqc 10750_3270_97447_HW7FCBGX9_14_AGTTCC_R1.fastq.gz &
fastqc 10750_3270_97447_HW7FCBGX9_14_AGTTCC_R2.fastq.gz &
fastqc 10750_3270_97448_HW7FCBGX9_15_ATGTCA_R1.fastq.gz &
fastqc 10750_3270_97448_HW7FCBGX9_15_ATGTCA_R2.fastq.gz &
fastqc 10750_3270_97449_HW7FCBGX9_16_CCGTCC_R1.fastq.gz &
fastqc 10750_3270_97449_HW7FCBGX9_16_CCGTCC_R2.fastq.gz &
fastqc 10750_3270_97450_HW7FCBGX9_17_ATTCCT_R1.fastq.gz &
fastqc 10750_3270_97450_HW7FCBGX9_17_ATTCCT_R2.fastq.gz &
fastqc 10750_3270_97451_HW7FCBGX9_18_GTCCGC_R1.fastq.gz &
fastqc 10750_3270_97451_HW7FCBGX9_18_GTCCGC_R2.fastq.gz &
fastqc 10750_3270_97452_HW7FCBGX9_19_GTGAAA_R1.fastq.gz &
fastqc 10750_3270_97452_HW7FCBGX9_19_GTGAAA_R2.fastq.gz &

export PATH=/programs/adapterremoval_2.1.1/bin:$PATH

AdapterRemoval --file1 ./10750_3270_97435_HW7FCBGX9_2_CGATGT_R1.fastq.gz  --file2 ./10750_3270_97435_HW7FCBGX9_2_CGATGT_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD2
AdapterRemoval --file1 ./10750_3270_97436_HW7FCBGX9_3_TTAGGC_R1.fastq.gz  --file2 ./10750_3270_97436_HW7FCBGX9_3_TTAGGC_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD3
AdapterRemoval --file1 ./10750_3270_97437_HW7FCBGX9_4_TGACCA_R1.fastq.gz --file2 ./10750_3270_97437_HW7FCBGX9_4_TGACCA_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD4
AdapterRemoval --file1 ./10750_3270_97438_HW7FCBGX9_5_ACAGTG_R1.fastq.gz  --file2 ./10750_3270_97438_HW7FCBGX9_5_ACAGTG_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD5
AdapterRemoval --file1 ./10750_3270_97439_HW7FCBGX9_6_GCCAAT_R1.fastq.gz  --file2 ./10750_3270_97439_HW7FCBGX9_6_GCCAAT_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD6
AdapterRemoval --file1 ./10750_3270_97440_HW7FCBGX9_7_CAGATC_R1.fastq.gz --file2 ./10750_3270_97440_HW7FCBGX9_7_CAGATC_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD7
AdapterRemoval --file1 ./10750_3270_97441_HW7FCBGX9_8_ACTTGA_R1.fastq.gz --file2 ./10750_3270_97441_HW7FCBGX9_8_ACTTGA_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD8
AdapterRemoval --file1 ./10750_3270_97442_HW7FCBGX9_9_GATCAG_R1.fastq.gz --file2 ./10750_3270_97442_HW7FCBGX9_9_GATCAG_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD9
AdapterRemoval --file1 ./10750_3270_97443_HW7FCBGX9_10_TAGCTT_R1.fastq.gz --file2 ./10750_3270_97443_HW7FCBGX9_10_TAGCTT_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD10
AdapterRemoval --file1 ./10750_3270_97444_HW7FCBGX9_11_GGCTAC_R1.fastq.gz --file2 ./10750_3270_97444_HW7FCBGX9_11_GGCTAC_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD11
AdapterRemoval --file1 ./10750_3270_97445_HW7FCBGX9_12_CTTGTA_R1.fastq.gz --file2 ./10750_3270_97445_HW7FCBGX9_12_CTTGTA_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD12
AdapterRemoval --file1 ./10750_3270_97446_HW7FCBGX9_13_AGTCAA_R1.fastq.gz --file2 ./10750_3270_97446_HW7FCBGX9_13_AGTCAA_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD13
AdapterRemoval --file1 ./10750_3270_97447_HW7FCBGX9_14_AGTTCC_R1.fastq.gz  --file2 ./10750_3270_97447_HW7FCBGX9_14_AGTTCC_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD14
AdapterRemoval --file1 ./10750_3270_97448_HW7FCBGX9_15_ATGTCA_R1.fastq.gz  --file2 ./10750_3270_97448_HW7FCBGX9_15_ATGTCA_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD15
AdapterRemoval --file1 ./10750_3270_97449_HW7FCBGX9_16_CCGTCC_R1.fastq.gz --file2 ./10750_3270_97449_HW7FCBGX9_16_CCGTCC_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD16
AdapterRemoval --file1 ./10750_3270_97450_HW7FCBGX9_17_ATTCCT_R1.fastq.gz  --file2 ./10750_3270_97450_HW7FCBGX9_17_ATTCCT_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD17
AdapterRemoval --file1 ./10750_3270_97451_HW7FCBGX9_18_GTCCGC_R1.fastq.gz  --file2 ./10750_3270_97451_HW7FCBGX9_18_GTCCGC_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD18
AdapterRemoval --file1 ./10750_3270_97452_HW7FCBGX9_19_GTGAAA_R1.fastq.gz --file2 ./10750_3270_97452_HW7FCBGX9_19_GTGAAA_R2.fastq.gz --trimns --trimqualities --minquality 10 --collapse --threads 16 --adapter-list for_adapter_removal_2.txt --basename LIBRARY_AD19



#Align my sequences to E. trailli reference genome re-aligned to Zebra finch genome


bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R2 --rg SM:R2 -1 ./LIBRARY_AD2.pair1.truncated -2 ./LIBRARY_AD2.pair2.truncated -U ./LIBRARY_AD2.collapsed,./LIBRARY_AD2.collapsed.truncated,./LIBRARY_AD2.singleton.truncated -S ./R2.sam
samtools view -bS R2.sam > R2.bam
samtools sort R2.bam -o R2ad_sorted.bam
rm ./R2.sam
rm ./R2.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R3 --rg SM:R3 -1 ./LIBRARY_AD3.pair1.truncated -2 ./LIBRARY_AD3.pair2.truncated -U ./LIBRARY_AD3.collapsed,./LIBRARY_AD3.collapsed.truncated,./LIBRARY_AD3.singleton.truncated -S ./R3.sam
samtools view -bS R3.sam > R3.bam
samtools sort R3.bam -o R3ad_sorted.bam
rm ./R3.sam
rm ./R3.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R4 --rg SM:R4 -1 ./LIBRARY_AD4.pair1.truncated -2 ./LIBRARY_AD4.pair2.truncated -U ./LIBRARY_AD4.collapsed,./LIBRARY_AD4.collapsed.truncated,./LIBRARY_AD4.singleton.truncated -S ./R4.sam
samtools view -bS R4.sam > R4.bam
samtools sort R4.bam -o R4ad_sorted.bam
rm ./R4.sam
rm ./R4.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R5 --rg SM:R5 -1 ./LIBRARY_AD5.pair1.truncated -2 ./LIBRARY_AD5.pair2.truncated -U ./LIBRARY_AD5.collapsed,./LIBRARY_AD5.collapsed.truncated,./LIBRARY_AD5.singleton.truncated -S ./R5.sam
samtools view -bS R5.sam > R5.bam
samtools sort R5.bam -o R5ad_sorted.bam
rm ./R5.sam
rm ./R5.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R6 --rg SM:R6 -1 ./LIBRARY_AD6.pair1.truncated -2 ./LIBRARY_AD6.pair2.truncated -U ./LIBRARY_AD6.collapsed,./LIBRARY_AD6.collapsed.truncated,./LIBRARY_AD6.singleton.truncated -S ./R6.sam
samtools view -bS R6.sam > R6.bam
samtools sort R6.bam -o R6ad_sorted.bam
rm ./R6.sam
rm ./R6.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R7 --rg SM:R7 -1 ./LIBRARY_AD7.pair1.truncated -2 ./LIBRARY_AD7.pair2.truncated -U ./LIBRARY_AD7.collapsed,./LIBRARY_AD7.collapsed.truncated,./LIBRARY_AD7.singleton.truncated -S ./R7.sam
samtools view -bS R7.sam > R7.bam
samtools sort R7.bam -o R7ad_sorted.bam
rm ./R7.sam
rm ./R7.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R8 --rg SM:R8 -1 ./LIBRARY_AD8.pair1.truncated -2 ./LIBRARY_AD8.pair2.truncated -U ./LIBRARY_AD8.collapsed,./LIBRARY_AD8.collapsed.truncated,./LIBRARY_AD8.singleton.truncated -S ./R8.sam
samtools view -bS R8.sam > R8.bam
samtools sort R8.bam -o R8ad_sorted.bam
rm ./R8.sam
rm ./R8.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R9 --rg SM:R9 -1 ./LIBRARY_AD9.pair1.truncated -2 ./LIBRARY_AD9.pair2.truncated -U ./LIBRARY_AD9.collapsed,./LIBRARY_AD9.collapsed.truncated,./LIBRARY_AD9.singleton.truncated -S ./R9.sam
samtools view -bS R9.sam > R9.bam
samtools sort R9.bam -o R9ad_sorted.bam
rm ./R9.sam
rm ./R9.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R10 --rg SM:R10 -1 ./LIBRARY_AD10.pair1.truncated -2 ./LIBRARY_AD10.pair2.truncated -U ./LIBRARY_AD10.collapsed,./LIBRARY_AD10.collapsed.truncated,./LIBRARY_AD10.singleton.truncated -S ./R10.sam
samtools view -bS R10.sam > R10.bam
samtools sort R10.bam -o R10ad_sorted.bam
rm ./R10.sam
rm ./R10.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R11 --rg SM:R11 -1 ./LIBRARY_AD11.pair1.truncated -2 ./LIBRARY_AD11.pair2.truncated -U ./LIBRARY_AD11.collapsed,./LIBRARY_AD11.collapsed.truncated,./LIBRARY_AD11.singleton.truncated -S ./R11.sam
samtools view -bS R11.sam > R11.bam
samtools sort R11.bam -o R11ad_sorted.bam
rm ./R11.sam
rm ./R11.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R12 --rg SM:R12 -1 ./LIBRARY_AD12.pair1.truncated -2 ./LIBRARY_AD12.pair2.truncated -U ./LIBRARY_AD12.collapsed,./LIBRARY_AD12.collapsed.truncated,./LIBRARY_AD12.singleton.truncated -S ./R12.sam
samtools view -bS R12.sam > R12.bam
samtools sort R12.bam -o R12ad_sorted.bam
rm ./R12.sam
rm ./R12.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R13 --rg SM:R13 -1 ./LIBRARY_AD13.pair1.truncated -2 ./LIBRARY_AD13.pair2.truncated -U ./LIBRARY_AD13.collapsed,./LIBRARY_AD13.collapsed.truncated,./LIBRARY_AD13.singleton.truncated -S ./R13.sam
samtools view -bS R13.sam > R13.bam
samtools sort R13.bam -o R13ad_sorted.bam
rm ./R13.sam
rm ./R13.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R14 --rg SM:R14 -1 ./LIBRARY_AD14.pair1.truncated -2 ./LIBRARY_AD14.pair2.truncated -U ./LIBRARY_AD14.collapsed,./LIBRARY_AD14.collapsed.truncated,./LIBRARY_AD14.singleton.truncated -S ./R14.sam
samtools view -bS R14.sam > R14.bam
samtools sort R14.bam -o R14ad_sorted.bam
rm ./R14.sam
rm ./R14.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R15 --rg SM:R15 -1 ./LIBRARY_AD15.pair1.truncated -2 ./LIBRARY_AD15.pair2.truncated -U ./LIBRARY_AD15.collapsed,./LIBRARY_AD15.collapsed.truncated,./LIBRARY_AD15.singleton.truncated -S ./R15.sam
samtools view -bS R15.sam > R15.bam
samtools sort R15.bam -o R15ad_sorted.bam
rm ./R15.sam
rm ./R15.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R16 --rg SM:R16 -1 ./LIBRARY_AD16.pair1.truncated -2 ./LIBRARY_AD16.pair2.truncated -U ./LIBRARY_AD16.collapsed,./LIBRARY_AD16.collapsed.truncated,./LIBRARY_AD16.singleton.truncated -S ./R16.sam
samtools view -bS R16.sam > R16.bam
samtools sort R16.bam -o R16ad_sorted.bam
rm ./R16.sam
rm ./R16.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R17 --rg SM:R17 -1 ./LIBRARY_AD17.pair1.truncated -2 ./LIBRARY_AD17.pair2.truncated -U ./LIBRARY_AD17.collapsed,./LIBRARY_AD17.collapsed.truncated,./LIBRARY_AD17.singleton.truncated -S ./R17.sam
samtools view -bS R17.sam > R17.bam
samtools sort R17.bam -o R17ad_sorted.bam
rm ./R17.sam
rm ./R17.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R18 --rg SM:R18 -1 ./LIBRARY_AD18.pair1.truncated -2 ./LIBRARY_AD18.pair2.truncated -U ./LIBRARY_AD18.collapsed,./LIBRARY_AD18.collapsed.truncated,./LIBRARY_AD18.singleton.truncated -S ./R18.sam
samtools view -bS R18.sam > R18.bam
samtools sort R18.bam -o R18ad_sorted.bam
rm ./R18.sam
rm ./R18.bam
#
bowtie2 -p 8 --phred33 --very-sensitive-local -x WILLOW_PSEUDOCHR -I 149 -X 1000 --rg-id R19 --rg SM:R19 -1 ./LIBRARY_AD19.pair1.truncated -2 ./LIBRARY_AD19.pair2.truncated -U ./LIBRARY_AD19.collapsed,./LIBRARY_AD19.collapsed.truncated,./LIBRARY_AD19.singleton.truncated -S ./R19.sam
samtools view -bS R19.sam > R19.bam
samtools sort R19.bam -o R19ad_sorted.bam
rm ./R19.sam
rm ./R19.bam

#here I accidentally created files with same name (in text, not in the file name) as those from previous batch (see option --rg-id when running bowtie)
#to correct this:

sed -i 's/FORMAT\tR2/FORMAT\tR2ad/g' R2ad.g.vcf &
sed -i 's/FORMAT\tR3/FORMAT\tR3ad/g' R3ad.g.vcf &
sed -i 's/FORMAT\tR4/FORMAT\tR4ad/g' R4ad.g.vcf &
sed -i 's/FORMAT\tR5/FORMAT\tR5ad/g' R5ad.g.vcf &
sed -i 's/FORMAT\tR6/FORMAT\tR6ad/g' R6ad.g.vcf &
sed -i 's/FORMAT\tR7/FORMAT\tR7ad/g' R7ad.g.vcf &
sed -i 's/FORMAT\tR8/FORMAT\tR8ad/g' R8ad.g.vcf &
sed -i 's/FORMAT\tR9/FORMAT\tR9ad/g' R9ad.g.vcf &
sed -i 's/FORMAT\tR10/FORMAT\tR10ad/g' R10ad.g.vcf &
sed -i 's/FORMAT\tR11/FORMAT\tR11ad/g' R11ad.g.vcf &
sed -i 's/FORMAT\tR12/FORMAT\tR12ad/g' R12ad.g.vcf &
sed -i 's/FORMAT\tR13/FORMAT\tR13ad/g' R13ad.g.vcf &
sed -i 's/FORMAT\tR14/FORMAT\tR14ad/g' R14ad.g.vcf &
sed -i 's/FORMAT\tR15/FORMAT\tR15ad/g' R15ad.g.vcf &
sed -i 's/FORMAT\tR16/FORMAT\tR16ad/g' R16ad.g.vcf &
sed -i 's/FORMAT\tR17/FORMAT\tR17ad/g' R17ad.g.vcf &
sed -i 's/FORMAT\tR18/FORMAT\tR18ad/g' R18ad.g.vcf &
sed -i 's/FORMAT\tR19/FORMAT\tR19ad/g' R19ad.g.vcf &



