#GEMMA (for figure S1)

#This script requires files "final_filter_todos.recode.vcf" from script 8
#keep only sites with no missing data

vcftools --vcf final_filter_todos.recode.vcf --max-missing 1  --remove-filtered-all --recode --out final_filter_todos_nomiss &

#make bed
/programs/plink-1.9-x86_64-beta5/plink --vcf ./final_filter_todos_nomiss.recode.vcf --double-id --make-bed --allow-extra-chr --biallelic-only strict --out ./final_todos_nomiss &

#Add phenotypes (Song PC1) to .fam file

#make distance matrix for correction
gemma -bfile final_todos_nomiss -gk 1 -o final_todos_nomiss &

gemma -bfile final_todos_nomiss -k ./output/final_todos_nomiss.cXX.txt -lmm 4 -n 1 -o final_todos_nomiss &


#I then manually filtered the output from Gemma to keep only data aligned to Zfinch chromosomes and ran the following perl 
#script to format the output to do a Manhattan plot, creating file
# final_todos_nomiss.assoc_aligned.txt


#!/usr/bin/perl
#this scrip takes gemma output and formats for manhattan
use warnings;
###First open file, and generate an output file to write to###
open GEMMA, "./final_todos_nomiss.assoc_aligned.txt" or die "ERROR1: $!\n";
open LOGP, ">./logp_aligned.txt" or die "ERROR2: $!\n";
#Ignore header
$waste_line = <GEMMA>;
while($parse = <GEMMA>) {
	chomp $parse;
	@a = split /\t/, $parse;
	$uniquefy{$a[0]} = 0;
	}
close GEMMA;
$value = 1;
foreach $e (keys %uniquefy) {
	$hash{$e} = $value;
	$value++;
}
open GEMMA, "./final_todos_nomiss.assoc.txt" or die "ERROR1: $!\n";
$waste_line = <GEMMA>;
print LOGP "SNP\tCHR\tBP\tP\n";
#parse the rest of the file line by line
$n=1;
while($parse = <GEMMA>) {
	chomp $parse;
	@b = split /\t/, $parse;
		#capture the 13th column and take the -log10
		$v = -log($b[12])/log(10);
		print LOGP "$n\t$hash{$b[0]}\t$b[2]\t$v\n";
		$n++;
	}
close GEMMA;
close LOGP;

open KEY, ">./KEY_aligned.txt" or die "ERROR3: $!\n";
print KEY "This is the chromosome to number key\n";
foreach $s (keys %hash) {	
	print KEY "$s = $hash{$s}\n";
}
close KEY;

#I then manually corrected the output with the chromosome numbers acording to the Key file, creating file
#logp_aligned_chr_corr 
#used to build a Manhattan plot from Gemma results (Supplementary Fig. S1)


###ADMIXTURE (Figure 2c)###

#This script requires files "final_filter_todos.recode.vcf" from script 8

nohup vcftools --vcf ./final_filter_todos.recode.vcf --thin 1000 --remove-filtered-all --recode --out final_filter_todos_thinned1000 & 

vcftools --vcf  final_filter_todos_thinned1000.recode.vcf  --plink --out final_filter_todos_thinned1000.plink &

/programs/plink-1.9-x86_64-beta5/plink --file final_filter_todos_thinned1000.plink  --make-bed --out final_filter_todos_thinned1000 &

/programs/admixture/admixture --cv final_filter_todos_thinned1000.bed 2 -j10 > final_filter_todos_thinned1000_2.out & #for two populations, pure COFL and pure PSFL song

