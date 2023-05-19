#As none of the scaffolds that failed to align to the Zebra Finch chromosomes contained outlier regions, I manually filtered the output 
#from Fst analysis resulting from previous script (rush2_final_25kb.windowed.weir.fst) to create a new file containing only the aligned 
#to chromosomes scaffolds, and only windows containing at least 10 SNPs:

#rush2_aligned_final_25kb_10SNP.windowed.weir.txt

#then I adapted and run a short perl script to format the data for Manhattan plot that can be used to filter out windows based on amount of SNPs 
#changing the threshold value as desired

$threshold = 0; # My file is already filtered to a threshold = 9

open I, "./rush2_aligned_final_25kb_10SNP.windowed.weir.fst" or die "ERROR0: $!\n";
open O, ">./out_rush2_final_25kb_10SNP_fixed_weighted.windowed.weir" or die "ERROR2: $!\n";
print O "SNP\tCHR\tBP\tP\n";
$waste_line = <I>;
$count = 1;
while ($parse = <I>) {
	chomp $parse;
	@a = split /\t/, $parse;
	$SNP = $count;
		$temp1 = $a[2] - $a[1] + 1;
		$temp2 = $temp1 /2;
	$BP = $temp2 + $a[1] - 1;
	$P = $a[4];
	$CHR = $a[0];
		if ($a[0] > $threshold) {
		print O "$SNP\t$CHR\t$BP\t$P\n";
		}
	else{exit};
	$count++;
}

	  
	  



