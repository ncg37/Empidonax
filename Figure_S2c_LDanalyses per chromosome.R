#LD results for the outlier areas in each chromosome (±100 kbp) based on SNPs with a minimum allele frequency 
#of 0.25 (Fig. S2c)


library(corrplot)

pure_1 <-as.matrix(read.table("./maf025_chr1_pures_LD.ld", header=F))
pure_1A <-as.matrix(read.table("./maf025_chr1A_pures_LD.ld", header=F))
pure_2 <-as.matrix(read.table("./maf025_chr2_pures_LD.ld", header=F))
pure_10 <-as.matrix(read.table("./maf025_chr10_pures_LD.ld", header=F))
pure_18 <-as.matrix(read.table("./maf025_chr18_pures_LD.ld", header=F))
pure_Z <-as.matrix(read.table("./maf025_chrZ_pures_LD.ld", header=F))

par(mfrow=c(1,6))

corrplot(pure_1, method="color", type="lower", tl.pos='n', na.label = " ", diag=F)
corrplot(pure_1A, method="color", type="lower", tl.pos='n', na.label = " ", diag=F)
corrplot(pure_2, method="color", type="lower", tl.pos='n',  na.label = " ", diag=F)
corrplot(pure_10, method="color", type="lower", tl.pos='n', na.label = " ",  diag=F)
corrplot(pure_18, method="color", type="lower", tl.pos='n', na.label = " ", diag=F)
corrplot(pure_Z, method="color", type="lower", tl.pos='n', na.label = " ", diag=F)

#------

admix_1 <-as.matrix(read.table("./maf025_chr1_admix_LD.ld", header=F))
admix_1A <-as.matrix(read.table("./maf025_chr1A_admix_LD.ld", header=F))
admix_2 <-as.matrix(read.table("./maf025_chr2_admix_LD.ld", header=F))
admix_10 <-as.matrix(read.table("./maf025_chr10_admix_LD.ld", header=F))
admix_18 <-as.matrix(read.table("./maf025_chr18_admix_LD.ld", header=F))
admix_Z <-as.matrix(read.table("./maf025_chrZ_admix_LD.ld", header=F))

par(mfrow=c(1,6))

corrplot(admix_1, method="color", type="lower", tl.pos='n', na.label = " ", diag=F)
corrplot(admix_1A, method="color", type="lower", tl.pos='n', na.label = " ", diag=F)
corrplot(admix_2, method="color", type="lower", tl.pos='n',  na.label = " ", diag=F)
corrplot(admix_10, method="color", type="lower", tl.pos='n', na.label = " ",  diag=F)
corrplot(admix_18, method="color", type="lower", tl.pos='n', na.label = " ", diag=F)
corrplot(admix_Z, method="color", type="lower", tl.pos='n', na.label = " ", diag=F)
