library(RColorBrewer)
library(SNPRelate)
library(qqman)

####

fst1<-read.table("./logp_aligned_chr_corr.txt", header=TRUE) 
mydf1<-data.frame(fst1)
mydf1<-subset(mydf1,P > 2)
head(mydf1)

#####
pdf("gemma_aligned.pdf",width=15,height=5)
par(mfrow=c(1,1)) 
manhattan(mydf1,chr="CHR",bp="BP",p="P",snp="SNP",logp=FALSE,ylab="-log(p)",xlab="Scaffold",
          main = "Gemma", cex = 1, cex.axis = 0.8, col=c("#3D3D3D","#B0B0B0"),
          genomewideline=-log10(0.05/3219269), suggestiveline=5, ylim = c(0,8))
dev.off()


peaks<-subset(mydf1,P > 5)
write.csv(peaks, "peaks_byNati.csv")
######

fst2<-read.table("./logp_notaligned.txt", header=TRUE) 
mydf2<-data.frame(fst2)
mydf2<-subset(mydf2,P > 2)
head(mydf2)

#####
pdf("gemma_not_aligned.pdf",width=15,height=5)
par(mfrow=c(1,1)) 
manhattan(mydf2,chr="CHR",bp="BP",p="P",snp="SNP",logp=FALSE,ylab="-log(p)",xlab="Scaffold",
          main = "Gemma", cex = 1, cex.axis = 0.8, col=c("#3D3D3D","#B0B0B0"),
          genomewideline=-log10(0.05/3219269), suggestiveline=5, ylim = c(0,8))
dev.off()

