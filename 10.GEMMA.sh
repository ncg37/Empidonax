#GEMMA

#This script requires files "final_filter_todos.recode.vcf" from script 8
#keep only sites with no missing data

vcftools --vcf final_filter_todos.recode.vcf --max-missing 1  --remove-filtered-all --recode --out final_filter_todos_nomiss &

#make bed
/programs/plink-1.9-x86_64-beta5/plink --vcf ./final_filter_todos_nomiss.recode.vcf --double-id --make-bed --allow-extra-chr --biallelic-only strict --out ./final_todos_nomiss &

#Add phenotypes (Song PC1) to .fam file

#make distance matrix for correction
gemma -bfile final_todos_nomiss -gk 1 -o final_todos_nomiss &


gemma -bfile final_todos_nomiss -k ./output/final_todos_nomiss.cXX.txt -lmm 4 -n 1 -o final_todos_nomiss &
