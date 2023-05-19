#Create vcf PURE SONG individuals (20 samples) and filter

nohup java -jar /programs/bin/GATK/GenomeAnalysisTK.jar -nt 5 -T GenotypeGVCFs  -R ./pseudochromosomes_etrailli.fasta \
--variant R2.g.vcf \
--variant R4.g.vcf \
--variant R5.g.vcf \
--variant R6.g.vcf \
--variant R1ad.g.vcf \
--variant R5ad.g.vcf \
--variant R8ad.g.vcf \
--variant R12ad.g.vcf \
--variant R13ad.g.vcf \
--variant R22.g.vcf \
--variant R19ad.g.vcf \
--variant R21ad.g.vcf \
--variant R7.g.vcf \
--variant R8.g.vcf \
--variant R9.g.vcf \
--variant R10.g.vcf \
--variant R17ad.g.vcf \
--variant R23.g.vcf \
--variant R24.g.vcf \
--variant R25.g.vcf \
-o UNFILTERED.vcf &

bgzip -c UNFILTERED.vcf > UNFILTERED.vcf.gz
tabix -p vcf UNFILTERED.vcf.gz &
nohup bcftools stats UNFILTERED.vcf.gz  > UNFILTERED.stats &

nohup java -jar /programs/bin/GATK/GenomeAnalysisTK.jar -T SelectVariants -R ./pseudochromosomes_etrailli.fasta  -V UNFILTERED.vcf -selectType SNP -o rush2_snps.vcf &

nohup java -jar /programs/bin/GATK/GenomeAnalysisTK.jar -T VariantFiltration -R ./pseudochromosomes_etrailli.fasta \
    -V rush2_snps.vcf \
    --filterExpression "QD < 2.0 || FS > 60.0 || MQ < 20.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
    --filterName "hard_snp_filter" \
    -o filtered_rush2_snps.vcf &

nohup vcftools --vcf filtered_rush2_snps.vcf --remove-filtered-all --recode --out removed_filtered_rush2_snps &

nohup vcftools --vcf ./removed_filtered_rush2_snps.recode.vcf --max-missing 0.8 --min-meanDP 3 --mac 3 --max-meanDP 50 --min-alleles 2 --max-alleles 2 --remove-filtered-all --recode --out final_filter_rush2 & 

#After filtering, kept 20 out of 20 Individuals
#Outputting VCF file...
#After filtering, kept 10552562 out of a possible 33104640 Sites

###Fst analysis 25 kb windows###

vcftools --vcf ./final_filter_rush2.recode.vcf  --remove-filtered-all  --fst-window-size 25000 --weir-fst-pop psfl --weir-fst-pop cofl --out  rush2_final_25kb &

#After filtering, kept 20 out of 20 Individuals
#Outputting Windowed Weir and Cockerham Fst estimates.
#Weir and Cockerham mean Fst estimate: 0.052128
#Weir and Cockerham weighted Fst estimate: 0.067267
#After filtering, kept 10552562 out of a possible 10552562 Sites

###Fst per site (to find outlier windows) ###

vcftools --vcf ./final_filter_rush2.recode.vcf  --remove-filtered-all  --weir-fst-pop psfl --weir-fst-pop cofl --out  rush2_final_xsite &

###Fst 5 kb windows for outlier areas zoom-in (figure 3b)###
#Create vcf files per chromosome

nohup vcftools --vcf ./final_filter_rush2.recode.vcf  --chr PseudoCM012081.1_Taeniopygia_guttata_isolate_Black17_chromosome_1,_whole_genome_shotgun_sequence --remove-filtered-all --recode  --out final_filter_rush2_chr1 &
nohup vcftools --vcf ./final_filter_rush2.recode.vcf  --chr PseudoCM012082.1_Taeniopygia_guttata_isolate_Black17_chromosome_1A,_whole_genome_shotgun_sequence --remove-filtered-all --recode  --out final_filter_rush2_chr1A &
nohup vcftools --vcf ./final_filter_rush2.recode.vcf --chr PseudoCM012083.1_Taeniopygia_guttata_isolate_Black17_chromosome_2,_whole_genome_shotgun_sequence --remove-filtered-all  --recode  --out final_filter_rush2_chr2 &
nohup vcftools --vcf ./final_filter_rush2.recode.vcf --chr PseudoCM012092.1_Taeniopygia_guttata_isolate_Black17_chromosome_10,_whole_genome_shotgun_sequence  --remove-filtered-all  --recode  --out final_filter_rush2_chr10 &
nohup vcftools --vcf ./final_filter_rush2.recode.vcf --chr PseudoCM012100.1_Taeniopygia_guttata_isolate_Black17_chromosome_18,_whole_genome_shotgun_sequence  --remove-filtered-all  --recode  --out final_filter_rush2_chr18 &
nohup vcftools --vcf ./final_filter_rush2.recode.vcf --chr PseudoCM012113.1_Taeniopygia_guttata_isolate_Black17_chromosome_Z,_whole_genome_shotgun_sequence --remove-filtered-all  --recode  --out final_filter_rush2_chr30 &

nohup vcftools --vcf ./final_filter_rush2_chr1.recode.vcf  --remove-filtered-all  --fst-window-size 5000 --weir-fst-pop psfl --weir-fst-pop cofl --out  rush2_final_chr1_5kb &
nohup vcftools --vcf ./final_filter_rush2_chr1A.recode.vcf  --remove-filtered-all  --fst-window-size 5000 --weir-fst-pop psfl --weir-fst-pop cofl --out  rush2_final_chr1A_5kb &
nohup vcftools --vcf ./final_filter_rush2_chr2.recode.vcf  --remove-filtered-all  --fst-window-size 5000 --weir-fst-pop psfl --weir-fst-pop cofl --out  rush2_final_chr2_5kb &
nohup vcftools --vcf ./final_filter_rush2_chr10.recode.vcf  --remove-filtered-all  --fst-window-size 5000 --weir-fst-pop psfl --weir-fst-pop cofl --out  rush2_final_chr10_5kb &
nohup vcftools --vcf ./final_filter_rush2_chr18.recode.vcf  --remove-filtered-all  --fst-window-size 5000 --weir-fst-pop psfl --weir-fst-pop cofl --out  rush2_final_chr18_5kb &
nohup vcftools --vcf ./final_filter_rush2_chr30.recode.vcf  --remove-filtered-all  --fst-window-size 5000 --weir-fst-pop psfl --weir-fst-pop cofl --out  rush2_final_chrZ_5kb &

###TajimaD (removing -mac filter) 5 kb windows for chromosomes with outlier areas###

nohup vcftools --vcf ./removed_filtered_rush2_snps.recode.vcf --max-missing 0.8 --min-meanDP 3  --max-meanDP 50 --min-alleles 2 --max-alleles 2 --remove-filtered-all --recode --out final_filter_sinmac_rush2 & 

#Create vcf files per chromosome

nohup vcftools --vcf ./final_filter_sinmac_rush2.recode.vcf  --chr PseudoCM012081.1_Taeniopygia_guttata_isolate_Black17_chromosome_1,_whole_genome_shotgun_sequence --remove-filtered-all --recode  --out final_filter_sinmac_rush2_chr1 &
nohup vcftools --vcf ./final_filter_sinmac_rush2.recode.vcf  --chr PseudoCM012082.1_Taeniopygia_guttata_isolate_Black17_chromosome_1A,_whole_genome_shotgun_sequence --remove-filtered-all --recode  --out final_filter_sinmac_rush2_chr1A &
nohup vcftools --vcf ./final_filter_sinmac_rush2.recode.vcf --chr PseudoCM012083.1_Taeniopygia_guttata_isolate_Black17_chromosome_2,_whole_genome_shotgun_sequence --remove-filtered-all  --recode  --out final_filter_sinmac_rush2_chr2 &
nohup vcftools --vcf ./final_filter_sinmac_rush2.recode.vcf --chr PseudoCM012092.1_Taeniopygia_guttata_isolate_Black17_chromosome_10,_whole_genome_shotgun_sequence  --remove-filtered-all  --recode  --out final_filter_sinmac_rush2_chr10 &
nohup vcftools --vcf ./final_filter_sinmac_rush2.recode.vcf --chr PseudoCM012100.1_Taeniopygia_guttata_isolate_Black17_chromosome_18,_whole_genome_shotgun_sequence  --remove-filtered-all  --recode  --out final_filter_sinmac_rush2_chr18 &
nohup vcftools --vcf ./final_filter_sinmac_rush2.recode.vcf --chr PseudoCM012113.1_Taeniopygia_guttata_isolate_Black17_chromosome_Z,_whole_genome_shotgun_sequence --remove-filtered-all  --recode  --out final_filter_sinmac_rush2_chrZ &


#TajimaD  analyses per pure song group
#cofl and psfl are text files listing which individuals belong to each pure song group

nohup vcftools --vcf ./final_filter_sinmac_rush2_chr1.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep psfl --out final_filter_psfl_chr1 &
nohup vcftools --vcf ./final_filter_sinmac_rush2_chr1A.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep psfl --out final_filter_psfl_chr1A &
nohup vcftools --vcf ./final_filter_sinmac_rush2_chr2.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep psfl --out final_filter_psfl_chr2 &
nohup vcftools --vcf ./final_filter_sinmac_rush2_chr10.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep psfl --out final_filter_psfl_chr10 &
nohup vcftools --vcf ./final_filter_sinmac_rush2_chr18.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep psfl --out final_filter_psfl_chr18 &
nohup vcftools --vcf ./final_filter_sinmac_rush2_chrZ.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep psfl --out final_filter_psfl_chrZ &

nohup vcftools --vcf ./final_filter_sinmac_rush2_chr1.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep cofl --out final_filter_cofl_chr1 &
nohup vcftools --vcf ./final_filter_sinmac_rush2_chr1A.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep cofl --out final_filter_cofl_chr1A &
nohup vcftools --vcf ./final_filter_sinmac_rush2_chr2.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep cofl --out final_filter_cofl_chr2 &
nohup vcftools --vcf ./final_filter_sinmac_rush2_chr10.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep cofl --out final_filter_cofl_chr10 &
nohup vcftools --vcf ./final_filter_sinmac_rush2_chr18.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep cofl --out final_filter_cofl_chr18 &
nohup vcftools --vcf ./final_filter_sinmac_rush2_chrZ.recode.vcf  --remove-filtered-all  --TajimaD 5000 --keep cofl --out final_filter_cofl_chrZ &


###Extraction of all sites for dxy and pi analyses x chromosome###

#rush2.list is a text file listing the individual vcf files per sample, the same that were used before to create an unique vcf with all
#pure song individuals

nohup java -Xmx100g -jar  /programs/bin/GATK/GenomeAnalysisTK.jar  -T GenotypeGVCFs -allSites  -L PseudoCM012081.1_Taeniopygia_guttata_isolate_Black17_chromosome_1,_whole_genome_shotgun_sequence -R ./pseudochromosomes_etrailli.fasta  -l INFO -V rush2.list -o rush2_allsites_chr1.vcf  -log rush2_allsites_chr1.log &
nohup java -Xmx100g -jar  /programs/bin/GATK/GenomeAnalysisTK.jar  -T GenotypeGVCFs -allSites  -L PseudoCM012082.1_Taeniopygia_guttata_isolate_Black17_chromosome_1A,_whole_genome_shotgun_sequence -R ./pseudochromosomes_etrailli.fasta  -l INFO -V rush2.list -o rush2_allsites_chr1A.vcf  -log rush2_allsites_chr1a.log &
nohup java -Xmx100g -jar  /programs/bin/GATK/GenomeAnalysisTK.jar  -T GenotypeGVCFs -allSites  -L PseudoCM012083.1_Taeniopygia_guttata_isolate_Black17_chromosome_2,_whole_genome_shotgun_sequence -R ./pseudochromosomes_etrailli.fasta  -l INFO -V rush2.list -o rush2_allsites_chr2.vcf  -log rush2_allsites_chr2.log &
nohup java -Xmx100g -jar  /programs/bin/GATK/GenomeAnalysisTK.jar  -T GenotypeGVCFs -allSites  -L PseudoCM012092.1_Taeniopygia_guttata_isolate_Black17_chromosome_10,_whole_genome_shotgun_sequence -R ./pseudochromosomes_etrailli.fasta  -l INFO -V rush2.list -o rush2_allsites_chr10.vcf  -log rush2_allsites_chr10.log
nohup java -Xmx100g -jar  /programs/bin/GATK/GenomeAnalysisTK.jar  -T GenotypeGVCFs -allSites  -L PseudoCM012100.1_Taeniopygia_guttata_isolate_Black17_chromosome_18,_whole_genome_shotgun_sequence -R ./pseudochromosomes_etrailli.fasta  -l INFO -V rush2.list -o rush2_allsites_chr18.vcf  -log rush2_allsites_chr18.log 
nohup java -Xmx100g -jar  /programs/bin/GATK/GenomeAnalysisTK.jar  -T GenotypeGVCFs -allSites  -L PseudoCM012113.1_Taeniopygia_guttata_isolate_Black17_chromosome_Z,_whole_genome_shotgun_sequence -R ./pseudochromosomes_etrailli.fasta  -l INFO -V rush2.list -o rush2_allsites_chrZ.vcf  -log rush2_allsites_chrZ.log 

#final filters except MQ for the chromosomes with outlier areas

nohup vcftools --vcf rush2_allsites_chr1.vcf --remove-indels --max-alleles 2  --max-missing 0.8 --min-meanDP 3 --max-meanDP 50 --remove-filtered-all   --recode --recode-INFO-all --out rush2_allsites.chr1.infoSites.max2allele_noindel.maxmiss80_removed &
nohup vcftools --vcf rush2_allsites_chr1A.vcf --remove-indels --max-alleles 2  --max-missing 0.8 --min-meanDP 3 --max-meanDP 50 --remove-filtered-all  --recode --recode-INFO-all --out  rush2_allsites.chr1A.infoSites.max2allele_noindel.maxmiss80_removed &
nohup vcftools --vcf rush2_allsites_chr2.vcf --remove-indels --max-alleles 2  --max-missing 0.8 --min-meanDP 3 --max-meanDP 50 --remove-filtered-all  --recode --recode-INFO-all --out rush2_allsites.chr2.infoSites.max2allele_noindel.maxmiss80_removed &
nohup vcftools --vcf rush2_allsites_chr10.vcf --remove-indels --max-alleles 2 --max-missing 0.8 --min-meanDP 3 --max-meanDP 50 --remove-filtered-all  --recode --recode-INFO-all --out rush2_allsites.chr10.infoSites.max2allele_noindel.maxmiss80_removed &
nohup vcftools --vcf rush2_allsites_chr18.vcf --remove-indels --max-alleles 2 --max-missing 0.8 --min-meanDP 3 --max-meanDP 50 --remove-filtered-all  --recode --recode-INFO-all --out rush2_allsites.chr18.infoSites.max2allele_noindel.maxmiss80_removed &
nohup vcftools --vcf rush2_allsites_chrZ.vcf --remove-indels --max-alleles 2  --max-missing 0.8 --min-meanDP 3 --max-meanDP 50 --remove-filtered-all  --recode --recode-INFO-all --out rush2_allsites.chrZ.infoSites.max2allele_noindel.maxmiss80_removed &

#MQ filtering using Darren Irwin's script

nohup cat rush2_allsites.chr1.infoSites.max2allele_noindel.maxmiss80_removed.recode.vcf| perl vcf2minmq.pl 20.0 > rush2_allsites.chr1.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
nohup cat rush2_allsites.chr1A.infoSites.max2allele_noindel.maxmiss80_removed.recode.vcf | perl vcf2minmq.pl 20.0 > rush2_allsites.chr1A.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
nohup cat rush2_allsites.chr2.infoSites.max2allele_noindel.maxmiss80_removed.recode.vcf | perl vcf2minmq.pl 20.0 > rush2_allsites.chr2.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
nohup cat rush2_allsites.chrZ.infoSites.max2allele_noindel.maxmiss80_removed.recode.vcf | perl vcf2minmq.pl 20.0 > rush2_allsites.chrZ.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
nohup cat rush2_allsites.chr10.infoSites.max2allele_noindel.maxmiss80_removed.recode.vcf| perl vcf2minmq.pl 20.0 > rush2_allsites.chr10.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
nohup cat rush2_allsites.chr18.infoSites.max2allele_noindel.maxmiss80_removed.recode.vcf| perl vcf2minmq.pl 20.0 > rush2_allsites.chr18.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &

sed -i 's/,_whole_genome_shotgun_sequence//g' rush2_allsites.chr1.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
sed -i 's/,_whole_genome_shotgun_sequence//g' rush2_allsites.chr1A.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
sed -i 's/,_whole_genome_shotgun_sequence//g' rush2_allsites.chr2.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
sed -i 's/,_whole_genome_shotgun_sequence//g' rush2_allsites.chr18.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
sed -i 's/,_whole_genome_shotgun_sequence//g' rush2_allsites.chr10.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
sed -i 's/,_whole_genome_shotgun_sequence//g' rush2_allsites.chrZ.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &

sed -i 's/PseudoCM012081.1_Taeniopygia_guttata_isolate_Black17_//g' rush2_allsites.chr1.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &
sed -i 's/PseudoCM012082.1_Taeniopygia_guttata_isolate_Black17_//g' rush2_allsites.chr1A.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf & 
sed -i 's/PseudoCM012083.1_Taeniopygia_guttata_isolate_Black17_//g' rush2_allsites.chr2.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf & 
sed -i 's/PseudoCM012084.1_Taeniopygia_guttata_isolate_Black17_//g' rush2_allsites.chr18.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf & 
sed -i 's/PseudoCM012092.1_Taeniopygia_guttata_isolate_Black17_//g' rush2_allsites.chr10.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf & 
sed -i 's/PseudoCM012113.1_Taeniopygia_guttata_isolate_Black17_//g' rush2_allsites.chrZ.infoSites.max2allele_noindel.maxmiss80.MQ20.vcf &


#Dxy and Pi by chromosome in 5 kb windows using Simon Martin scripts

python parseVCF.py -i rush2_allsites.chr1.infoSites.max2allele_noindel.maxmiss80.vcf.MQ20.vcf  > rush2_allsites.chr1.geno &
python parseVCF.py -i rush2_allsites.chr1A.infoSites.max2allele_noindel.maxmiss80.vcf.MQ20.vcf  > rush2_allsites.chr1A.geno &
python parseVCF.py -i rush2_allsites.chr2.infoSites.max2allele_noindel.maxmiss80.vcf.MQ20.vcf  > rush2_allsites.chr2.geno &
python parseVCF.py -i rush2_allsites.chr10.infoSites.max2allele_noindel.maxmiss80.vcf.MQ20.vcf  > rush2_allsites.chr10.geno
python parseVCF.py -i rush2_allsites.chr18.infoSites.max2allele_noindel.maxmiss80.vcf.MQ20.vcf  > rush2_allsites.chr18.geno &
python parseVCF.py -i rush2_allsites.chrZ.infoSites.max2allele_noindel.maxmiss80.vcf.MQ20.vcf  > rush2_allsites.chrZ.geno &

python popgenWindows.py -w 5000 -m 2 -g rush2_allsites.chr1.geno -o rush2_allsites.chr1.5kb.csv -f phased -T 5 -p popA -p popB --popsFile samples.txt  --windType coordinate &
python popgenWindows.py -w 5000 -m 2 -g rush2_allsites.chr1A.geno -o rush2_allsites.chr1A.5kb.csv -f phased -T 5 -p popA -p popB --popsFile samples.txt  --windType coordinate &
python popgenWindows.py -w 5000 -m 2 -g rush2_allsites.chr2.geno -o rush2_allsites.chr2.5kb.csv -f phased -T 5 -p popA -p popB --popsFile samples.txt  --windType coordinate &
python popgenWindows.py -w 5000 -m 2 -g rush2_allsites.chr10.geno -o rush2_allsites.chr10.5kb.csv -f phased -T 5 -p popA -p popB --popsFile samples.txt  --windType coordinate &
python popgenWindows.py -w 5000 -m 2 -g rush2_allsites.chr18.geno -o rush2_allsites.chr18.5kb.csv -f phased -T 5 -p popA -p popB --popsFile samples.txt  --windType coordinate &
python popgenWindows.py -w 5000 -m 2 -g rush2_allsites.chrZ.geno -o rush2_allsites.chrZ.5kb.csv -f phased -T 5 -p popA -p popB --popsFile samples.txt  --windType coordinate 
