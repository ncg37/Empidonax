#This script requires files "final_filter_todos.recode.vcf" from script 8

###PCA all individuals (Figure 2.b)###

library(SNPRelate)
library(ggplot2)

snpgdsVCF2GDS(vcf.fn="./final_filter_todos.recode.vcf", out.fn="all_snps_rush2_todos.gds", method = c("biallelic.only"), compress.annotation="ZIP.max", snpfirstdim=FALSE, verbose=TRUE)

snpgdsSummary("./all_snps_rush2_todos.gds")

genofile <- snpgdsOpen("./all_snps_rush2_todos.gds")
   
pca <- snpgdsPCA(gdsobj = genofile,autosome.only=FALSE)

pc.percent <- pca$varprop*100
head(round(pc.percent, 2))

tab <- data.frame(sample.id = pca$sample.id,
                  EV1 = pca$eigenvect[,1],    # the first eigenvector
                  EV2 = pca$eigenvect[,2],    # the second eigenvector
                  stringsAsFactors = FALSE)


vec <- c("admix","cofl","admix","admix","psfl","psfl","admix","admix","admix","cofl","admix","cofl","psfl","psfl","cofl","psfl","cofl","cofl","cofl","admix","admix",
         "admix","psfl","admix","psfl","psfl","psfl","admix","cofl","admix","cofl","psfl","cofl","admix")

tab2 <- cbind(tab,vec)

theme_classic()

p<-ggplot(tab2, aes(x=EV1, y=EV2, group=vec)) +
  geom_point(aes(shape=vec), size = 3)+
  geom_convexhull(alpha = 0.2)+
  scale_shape_manual(values=c(4, 2, 1))+
  xlab("PC1 (6.4%)") + ylab("PC2 (3.3%)") + 
  #scale_color_manual(values=c('#999999','#63ACBE', '#601A4A'))+
  #scale_size_manual(values=c(3,3,3))+
  theme(legend.position="right")
  

