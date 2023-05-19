###PCA per chromosome based on  near fixed SNPs that passed filters (Fig 5a)###

library(SNPRelate)
library(ggplot2)

data <-read.csv("PCA_all.csv", header =TRUE, row.names =1)
PC1_song <-data$PC1_song

#CHR1--------

snpgdsVCF2GDS(vcf.fn="./filtered_fixedSNP_chr1.recode.vcf", out.fn="fixedSNP_chr1.gds", 
              method = c("biallelic.only"), compress.annotation="ZIP.max", snpfirstdim=FALSE, verbose=TRUE)

snpgdsSummary("./fixedSNP_chr1.gds")

genofile <- snpgdsOpen("./fixedSNP_chr1.gds")
pca <- snpgdsPCA(gdsobj = genofile,autosome.only=FALSE)

pc.percent <- pca$varprop*100
head(round(pc.percent, 2))

tab <- data.frame(sample.id = pca$sample.id,
                  EV1 = pca$eigenvect[,1],    # the first eigenvector
                  EV2 = pca$eigenvect[,2],    # the second eigenvector
                  stringsAsFactors = FALSE)
                  
vec <- c("admix","cofl","admix","admix","psfl","psfl","admix","admix","admix","cofl","admix","cofl","psfl","psfl","cofl","psfl","cofl","cofl","cofl","admix","admix",
         "admix","psfl","admix","psfl","psfl","psfl","admix","cofl","admix","cofl","psfl","cofl","admix") 

tab2_chr1 <- cbind(tab,PC1_song, vec)

model<-lm (PC1_song~EV1, data=tab2_chr1)
summary(model)

chr1<-ggplot(tab2_chr1, aes(x=EV1, y=PC1_song, group=vec)) +
  geom_point(aes(color = vec, shape=vec), size=3)+
  scale_color_manual(values=c("black", "#63ACBE", "#601A4A"))+
  #geom_convexhull(alpha = 0.2)+
  scale_shape_manual(values=c(1, 19, 19))+
  ylab("") + 
  xlab(" ")+
  theme_bw()+  guides(color = FALSE, shape = FALSE)
chr1

#CHR1A--------

snpgdsVCF2GDS(vcf.fn="./filtered_fixedSNP_chr1A.recode.vcf", out.fn="filtered_fixedSNP_chr1A.gds", 
              method = c("biallelic.only"), compress.annotation="ZIP.max", snpfirstdim=FALSE, verbose=TRUE)

snpgdsSummary("./filtered_fixedSNP_chr1A.gds")

genofile <- snpgdsOpen("./filtered_fixedSNP_chr1A.gds")
pca <- snpgdsPCA(gdsobj = genofile,autosome.only=FALSE)

pc.percent <- pca$varprop*100
head(round(pc.percent, 2))

tab <- data.frame(sample.id = pca$sample.id,
                  EV1 = pca$eigenvect[,1],    # the first eigenvector
                  EV2 = pca$eigenvect[,2],    # the second eigenvector
                  stringsAsFactors = FALSE)

vec <- c("admix","cofl","admix","admix","psfl","psfl","admix","admix","admix","cofl","admix","cofl","psfl","psfl","cofl","psfl","cofl","cofl","cofl","admix","admix",
         "admix","psfl","admix","psfl","psfl","psfl","admix","cofl","admix","cofl","psfl","cofl","admix") 

tab2_chr1A <-cbind(tab,PC1_song, vec)

model<-lm (PC1_song~EV1, data=tab2_chr1A)
summary(model)

chr1A<-ggplot(tab2_chr1A, aes(x=EV1, y=PC1_song, group=vec)) +
  geom_point(aes(color = vec, shape=vec), size=3)+
  scale_color_manual(values=c("black", "#63ACBE", "#601A4A"))+
  #geom_convexhull(alpha = 0.2)+
  scale_shape_manual(values=c(1, 19, 19))+
  ylab("") + 
  xlab(" ")+
  theme_bw()+
  guides(color = FALSE, shape = FALSE)

chr1A

#chr2--------
snpgdsVCF2GDS(vcf.fn="./filtered_fixedSNP_chr2.recode.vcf", out.fn="filtered_fixedSNP_chr2.gds", 
              method = c("biallelic.only"), compress.annotation="ZIP.max", snpfirstdim=FALSE, verbose=TRUE)

snpgdsSummary("./filtered_fixedSNP_chr2.gds")

genofile <- snpgdsOpen("./filtered_fixedSNP_chr2.gds")
pca <- snpgdsPCA(gdsobj = genofile,autosome.only=FALSE)

pc.percent <- pca$varprop*100
head(round(pc.percent, 2))

tab <- data.frame(sample.id = pca$sample.id,
                  EV1 = pca$eigenvect[,1],    # the first eigenvector
                  EV2 = pca$eigenvect[,2],    # the second eigenvector
                  stringsAsFactors = FALSE)

vec <- c("admix","cofl","admix","admix","psfl","psfl","admix","admix","admix","cofl","admix","cofl","psfl","psfl","cofl","psfl","cofl","cofl","cofl","admix","admix",
         "admix","psfl","admix","psfl","psfl","psfl","admix","cofl","admix","cofl","psfl","cofl","admix") 

tab2_chr2 <- cbind(tab,PC1_song, vec)

model<-lm (PC1_song~EV1, data=tab2_chr2)
summary(model)

chr2<-ggplot(tab2_chr2 , aes(x=EV1, y=PC1_song, group=vec)) +
  geom_point(aes(color = vec, shape=vec), size=3)+
  scale_color_manual(values=c("black", "#63ACBE", "#601A4A"))+
  #geom_convexhull(alpha = 0.2)+
  scale_shape_manual(values=c(1, 19, 19))+
  ylab("") + 
  xlab(" ")+
  theme_bw()+
  guides(color = FALSE, shape = FALSE)

chr2

#chr10--------
snpgdsVCF2GDS(vcf.fn="./filtered_fixedSNP_chr10.recode.vcf", out.fn="filtered_fixedSNP_chr10.gds", 
              method = c("biallelic.only"), compress.annotation="ZIP.max", snpfirstdim=FALSE, verbose=TRUE)

snpgdsSummary("./filtered_fixedSNP_chr10.gds")

genofile <- snpgdsOpen("./filtered_fixedSNP_chr10.gds")
pca <- snpgdsPCA(gdsobj = genofile,autosome.only=FALSE)

pc.percent <- pca$varprop*100
head(round(pc.percent, 2))

tab <- data.frame(sample.id = pca$sample.id,
                  EV1 = pca$eigenvect[,1],    # the first eigenvector
                  EV2 = pca$eigenvect[,2],    # the second eigenvector
                  stringsAsFactors = FALSE)

vec <- c("admix","cofl","admix","admix","psfl","psfl","admix","admix","admix","cofl","admix","cofl","psfl","psfl","cofl","psfl","cofl","cofl","cofl","admix","admix",
         "admix","psfl","admix","psfl","psfl","psfl","admix","cofl","admix","cofl","psfl","cofl","admix") 

tab2_chr10 <- cbind(tab,PC1_song, vec)

model<-lm (PC1_song~EV1, data=tab2_chr10)
summary(model)

chr10<-ggplot(tab2_chr10, aes(x=EV1, y=PC1_song, group=vec)) +
  geom_point(aes(color = vec, shape=vec), size=3)+
  scale_color_manual(values=c("black", "#63ACBE", "#601A4A"))+
  #geom_convexhull(alpha = 0.2)+
  scale_shape_manual(values=c(1, 19, 19))+
  ylab("") + 
  xlab(" ")+
  theme_bw()+
  guides(color = FALSE, shape = FALSE)

chr10

#chr18--------
snpgdsVCF2GDS(vcf.fn="./filtered_fixedSNP_chr18.recode.vcf", out.fn="filtered_fixedSNP_chr18.gds", 
              method = c("biallelic.only"), compress.annotation="ZIP.max", snpfirstdim=FALSE, verbose=TRUE)

snpgdsSummary("./filtered_fixedSNP_chr18.gds")

genofile <- snpgdsOpen("./filtered_fixedSNP_chr18.gds")
pca <- snpgdsPCA(gdsobj = genofile,autosome.only=FALSE)

pc.percent <- pca$varprop*100
head(round(pc.percent, 2))

tab <- data.frame(sample.id = pca$sample.id,
                  EV1 = pca$eigenvect[,1],    # the first eigenvector
                  EV2 = pca$eigenvect[,2],    # the second eigenvector
                  stringsAsFactors = FALSE)

vec <- c("admix","cofl","admix","admix","psfl","psfl","admix","admix","admix","cofl","admix","cofl","psfl","psfl","cofl","psfl","cofl","cofl","cofl","admix","admix",
         "admix","psfl","admix","psfl","psfl","psfl","admix","cofl","admix","cofl","psfl","cofl","admix") 

tab2_chr18 <- cbind(tab,PC1_song, vec)

model<-lm (PC1_song~EV1, data=tab2_chr18)
summary(model)

chr18<- ggplot(tab2_chr18, aes(x=EV1, y=PC1_song, group=vec)) +
  geom_point(aes(color = vec, shape=vec), size=3)+
  scale_color_manual(values=c("black", "#63ACBE", "#601A4A"))+
  #geom_convexhull(alpha = 0.2)+
  scale_shape_manual(values=c(1, 19, 19))+
  ylab("") + 
  xlab(" ")+
  theme_bw()+  
  guides(color = FALSE, shape = FALSE)

chr18

#chrZ--------
snpgdsVCF2GDS(vcf.fn="./filtered_fixedSNP_chrZ_corrected.recode.vcf", out.fn="filtered_fixedSNP_chrZ_corr.gds", 
              method = c("biallelic.only"), compress.annotation="ZIP.max", snpfirstdim=FALSE, verbose=TRUE)

snpgdsSummary("./filtered_fixedSNP_chrZ_corr.gds")

genofile <- snpgdsOpen("./filtered_fixedSNP_chrZ_corr.gds")
pca <- snpgdsPCA(gdsobj = genofile,autosome.only=FALSE)

pc.percent <- pca$varprop*100
head(round(pc.percent, 2))

tab <- data.frame(sample.id = pca$sample.id,
                  EV1 = pca$eigenvect[,1],    # the first eigenvector
                  EV2 = pca$eigenvect[,2],    # the second eigenvector
                  stringsAsFactors = FALSE)

vec <- c("admix","cofl","admix","admix","psfl","psfl","admix","admix","admix","cofl","admix","cofl","psfl","psfl","cofl","psfl","cofl","cofl","cofl","admix","admix",
         "admix","psfl","admix","psfl","psfl","psfl","admix","cofl","admix","cofl","psfl","cofl","admix") 

tab2_chrZ <- cbind(tab,PC1_song, vec)

model<-lm (PC1_song~EV1, data=tab2_chrZ)
summary(model)

chrZ<-ggplot(tab2_chrZ, aes(x=EV1, y=PC1_song, group=vec)) +
  geom_point(aes(color = vec, shape=vec), size=3)+
  scale_color_manual(values=c("black", "#63ACBE", "#601A4A"))+
  #geom_convexhull(alpha = 0.2)+
  scale_shape_manual(values=c(1, 19, 19))+
  theme(legend.position="right")+
  ylab("") + 
  xlab(" ")+
  theme_bw()+
  guides(color = FALSE, shape = FALSE)

chrZ

library(gridExtra)
grid.arrange(chr1, chr1A, chr2, chr10, chr18, chrZ, nrow = 2)


###LD analysis for near fixed SNPs for pure-song and inter-song individuals (figure 5b)###
### Not in R

vcftools --vcf final_filter_todos.recode.vcf --positions positions452.txt  --remove-filtered-all --recode --out filtered_452SNPs &

vcftools --vcf filtered_452SNPs.recode.vcf  --remove-filtered-all --keep pures.sh  --recode --out filtered_452SNPs_pures &
vcftools --vcf filtered_452SNPs.recode.vcf  --remove-filtered-all --remove pures.sh  --recode --out filtered_452SNPs_admixed &

nohup /programs/plink-1.9-x86_64-beta5/plink --vcf ./filtered_452SNPs_pures.recode.vcf   --allow-extra-chr  --r2 square --out filtered_452SNPs_pures_LD &
nohup /programs/plink-1.9-x86_64-beta5/plink --vcf ./filtered_452SNPs_admixed.recode.vcf  --allow-extra-chr  --r2 square  --out filtered_452SNPs_admix_LD &


