#The resulting file from "Format Fst results for Manhattan plot" is used here to create the Manhattan plot in Figure 3a

library(qqman)

fst<-read.table("out_rush2_final_25kb_10SNP_fixed_weighted.windowed.weir.txt", header=TRUE) 
mydf5<-data.frame(fst)

manhattan(mydf,chr="CHR",bp="BP",p="P",snp="SNP",logp=FALSE, ylab="Fst", cex = 0.1, cex.axis = 0.5, 
          col=c("#3D3D3D","#B0B0B0"), genomewideline=F, suggestiveline=F)


#This part uses files resulting from script 6 to create the panels in figure 3 b-d and in figure S2 a-b
#Outlier areas are determined based on outlier windows per chromosome (see Supplementary Table S2)

library(dplyr)

#CHR1--------

dxy1<-read.table("rush2_allsites.chr1.5kb.csv", sep=",", header = TRUE)
filter(dxy1, start >= 10825001 & end <= 13200000) -> dxy1_pico
dxy1_pico[,"dxy100"]<-dxy1_pico$dxy_popA_popB*100

fst1 <-read.table("rush2_final_chr1_5kb.windowed.weir.fst", header = TRUE)
filter(fst1, N_VARIANTS>1 & BIN_START >= 10825001 & BIN_END <= 13200000) -> fst1_pico


tajimaD<-read.table("final_filter_sinmac_psfl_chr1.Tajima.D",  header = TRUE)
filter(tajimaD, N_SNPS>1 & BIN_START >= 10825001 & BIN_START < 13200000) -> tajima_1_psfl

tajimaD2<-read.table("final_filter_sinmac_cofl_chr1.Tajima.D",  header = TRUE)
filter(tajimaD2, N_SNPS>1 & BIN_START >= 10825001 & BIN_START < 13200000) -> tajima_1_cofl


#CHR1A--------

dxy1A <-read.table("rush2_allsites.chr1A.5kb.csv", sep=",", header = TRUE)
filter(dxy1A,  start >= 60775001 & end <= 63550000) -> dxy1A_pico
dxy1A_pico[,"dxy100"]<-dxy1A_pico$dxy_popA_popB*100

fst1A <-read.table("rush2_final_chr1A_5kb.windowed.weir.fst", header = TRUE)
filter(fst1A, N_VARIANTS>1 & BIN_START >= 60775001 & BIN_END <= 63550000) -> fst1A_pico

tajimaD<-read.table("final_filter_sinmac_psfl_chr1A.Tajima.D",  header = TRUE)
filter(tajimaD, N_SNPS>1 & BIN_START >= 60775001 & BIN_START < 63550000) ->tajima_1A_psfl

tajimaD2<-read.table("final_filter_sinmac_cofl_chr1A.Tajima.D",  header = TRUE)
filter(tajimaD2, N_SNPS>9 & BIN_START >= 60775001 & BIN_START < 63550000) -> tajima_1A_cofl

#CHR2----------

dxy2 <-read.table("rush2_allsites.chr2.5kb.csv", sep=",", header = TRUE)
filter(dxy2,  start >= 56825001 & end <= 59175000) -> dxy2_pico
dxy2_pico[,"dxy100"]<-dxy2_pico$dxy_popA_popB*100

fst2 <-read.table("rush2_final_chr2_5kb.windowed.weir.fst", header = TRUE)
filter(fst2, N_VARIANTS>1 & BIN_START >= 56825001 & BIN_END <= 59175000) -> fst2_pico

tajimaD<-read.table("final_filter_sinmac_psfl_chr2.Tajima.D",  header = TRUE)
filter(tajimaD, N_SNPS>1 & BIN_START >= 56825001 & BIN_START < 59175000) -> tajima_2_psfl

tajimaD2<-read.table("final_filter_sinmac_cofl_chr2.Tajima.D",  header = TRUE)
filter(tajimaD2, N_SNPS>1 & BIN_START >= 56825001 & BIN_START < 59175000) -> tajima_2_cofl

#CHR10---------

dxy10 <-read.table("rush2_allsites.chr10.5kb.csv", sep=",", header = TRUE)
filter(dxy10, start >= 19825001 & end <= 21900000) -> dxy10_pico
dxy10_pico[,"dxy100"]<-dxy10_pico$dxy_popA_popB*100

fst10 <-read.table("rush2_final_chr10_5kb.windowed.weir.fst", header = TRUE)
filter(fst10, N_VARIANTS>1 & BIN_START >= 19825001 & BIN_END <= 21900000) -> fst10_pico

tajimaD<-read.table("final_filter_sinmac_psfl_chr10.Tajima.D",  header = TRUE)
filter(tajimaD, N_SNPS>1 & BIN_START >= 19825001 & BIN_START < 21900000) -> tajima_10_psfl

tajimaD2<-read.table("final_filter_sinmac_cofl_chr10.Tajima.D",  header = TRUE)
filter(tajimaD2, N_SNPS>1 & BIN_START >= 19825001 & BIN_START < 21900000) -> tajima_10_cofl

#CHR18---------------------

dxy18 <-read.table("rush2_allsites.chr18.5kb.csv", sep=",", header = TRUE)
filter(dxy18, start >= 0 & end <= 1725000) -> dxy18_pico
dxy18_pico[,"dxy100"]<-dxy18_pico$dxy_popA_popB*100

fst18 <-read.table("rush2_final_chr18_5kb.windowed.weir.fst", header = TRUE)
filter(fst18, N_VARIANTS>1 & BIN_START >= 0 & BIN_END <= 1725000) -> fst18_pico

tajimaD<-read.table("final_filter_sinmac_psfl_chr18.Tajima.D",  header = TRUE)
filter(tajimaD, N_SNPS>1 & BIN_START >= 0 & BIN_START < 1725000) -> tajima_18_psfl

tajimaD2<-read.table("final_filter_sinmac_cofl_chr18.Tajima.D",  header = TRUE)
filter(tajimaD2, N_SNPS>1 & BIN_START >= 0 & BIN_START < 1725000) -> tajima_18_cofl

#CHRZ------------------

dxyZ <-read.table("rush2_allsites.chrZ.5kb.csv", sep=",", header = TRUE)
filter(dxyZ, start >= 26950001 & end <= 34100000) -> dxyZ_pico
dxyZ_pico[,"dxy100"]<-dxyZ_pico$dxy_popA_popB*100

fstZ <-read.table("rush2_final_chrZ_5kb.windowed.weir.fst", header = TRUE)
filter(fstZ, N_VARIANTS>1 & BIN_START >= 26950001 & BIN_END <= 34100000) -> fstZ_pico

tajimaD<-read.table("final_filter_sinmac_psfl_chrZ.Tajima.D",  header = TRUE)
filter(tajimaD, N_SNPS>1 & BIN_START >= 26950001 & BIN_START < 34100000) -> tajima_Z_psfl

tajimaD2<-read.table("final_filter_sinmac_cofl_chrZ.Tajima.D",  header = TRUE)
filter(tajimaD2, N_SNPS>1 & BIN_START >= 26950001 & BIN_START < 34100000) -> tajima_Z_cofl

#Figure 3 b-d----

#Fst+Dxy-----------

## add extra 0space to right margin of plot within frame
par(mfrow=c(4,6), mar=c(2, 2, 2, 0), oma=c(1,2,1,5))

#Chr1
pos <- dxy1_pico$start
pos2 <-fst1_pico$BIN_START
dxy<- dxy1_pico$dxy100
fst <- fst1_pico$WEIGHTED_FST

smoothed_fst <- runmed(fst, k=21)
smoothed_dxy <- runmed(dxy, k=21)

## Plot first set of data and draw its axis
plot(pos2, smoothed_fst, ylab="Fst", xlab=" ", ylim=c(0, 1), las =1, type="l",col="black", main="Chr 1", lwd=2)
box()
## Allow a second plot on the same graph
par(new=TRUE)
## Plot the second plot and put axis scale on right
plot(pos, smoothed_dxy, ylim=c(0,2), xlab=" ", ylab=" ", axes=FALSE, type="l", col="#EE442F", lwd=2)


#Chr1A
pos <- dxy1A_pico$start
pos2 <-fst1A_pico$BIN_START
dxy<- dxy1A_pico$dxy100
fst <- fst1A_pico$WEIGHTED_FST

smoothed_fst <- runmed(fst, k=21)
smoothed_dxy <- runmed(dxy, k=21)

plot(pos2, smoothed_fst, axes=FALSE, xlab=" ", ylab=" ", ylim=c(0, 1), las =1, type="l",col="black", main="Chr 1A", lwd=2)
axis(1)
box()

par(new=TRUE)
plot(pos, smoothed_dxy, ylim=c(0,2), xlab=" ", ylab=" ", axes=FALSE, type="l", col="#EE442F", lwd=2)

#Chr2

pos <- dxy2_pico$start
pos2 <-fst2_pico$BIN_START
dxy<- dxy2_pico$dxy100
fst <- fst2_pico$WEIGHTED_FST

smoothed_fst <- runmed(fst, k=21)
smoothed_dxy <- runmed(dxy, k=21)

plot(pos2, smoothed_fst, axes =FALSE, xlab="POS", ylab=" ", ylim=c(0, 1), las =1, type="l",col="black", main="Chr 2", lwd=2)
axis(1)
box()

par(new=TRUE)
plot(pos, smoothed_dxy, ylim=c(0,2), xlab=" ",ylab=" ", axes=FALSE, type="l", col="#EE442F", lwd=2)

#Chr10
pos <- dxy10_pico$start
pos2 <-fst10_pico$BIN_START
dxy<- dxy10_pico$dxy100
fst <- fst10_pico$WEIGHTED_FST

smoothed_fst <- runmed(fst, k=21)
smoothed_dxy <- runmed(dxy, k=21)

plot(pos2, smoothed_fst,axes =FALSE, xlab=" ", ylab=" ", ylim=c(0, 1), las =1, type="l",col="black", main="Chr 10", lwd=2)
axis(1)
box()

par(new=TRUE)
plot(pos, smoothed_dxy, ylim=c(0,2), xlab=" ",ylab=" ", axes=FALSE, type="l", col="#EE442F", lwd=2)

#Chr18
pos <- dxy18_pico$start
pos2 <-fst18_pico$BIN_START
dxy<- dxy18_pico$dxy100
fst <- fst18_pico$WEIGHTED_FST

smoothed_fst <- runmed(fst, k=21)
smoothed_dxy <- runmed(dxy, k=21)

plot(pos2, smoothed_fst, axes =FALSE, xlab=" ", ylab=" ", ylim=c(0, 1), las =1, type="l",col="black", main="Chr 18", lwd=2)
axis(1)
box()

par(new=TRUE)
plot(pos, smoothed_dxy, ylim=c(0,2),xlab=" ", ylab=" ", axes=FALSE, type="l", col="#EE442F", lwd=2)

#ChrZ
pos <- dxyZ_pico$start
pos2 <-fstZ_pico$BIN_START
dxy<- dxyZ_pico$dxy100
fst <- fstZ_pico$WEIGHTED_FST

smoothed_fst <- runmed(fst, k=21)
smoothed_dxy <- runmed(dxy, k=21)

plot(pos2, smoothed_fst,axes =FALSE, xlab=" ", ylab=" ", ylim=c(0, 1), las =1, type="l",col="black", main="Chr Z", lwd=2)
axis(1)
box()

par(new=TRUE)
plot(pos, smoothed_dxy, ylim=c(0,2), xlab=" ",ylab=" ", axes=FALSE, type="l", col="#EE442F", lwd=2)
## a little farther out (line=4) to make room for labels
mtext("Dxy * 100",side=4,col="#EE442F", line=3, cex =0.6) 
axis(4, ylim=c(0,1), col="#EE442F",col.axis="#EE442F",las=1)


#TAJIMA-----
#Chr 1
pos <- tajima_1_psfl$BIN_START
pos2 <-tajima_1_cofl$BIN_START
tajimaD_psfl <- tajima_1_psfl$TajimaD
tajimaD_cofl <- tajima_1_cofl$TajimaD

smoothed_psfl <- runmed(tajimaD_psfl, k=21)
smoothed_cofl <- runmed(tajimaD_cofl, k=21)

plot(pos, smoothed_psfl,ylim=c(-2,3), las=1, type="l", xlab="", ylab="Tajima's D", col="#601A4A",las=1,lwd=2)
lines(pos2, smoothed_cofl, xlab="", ylab="", type="l", col="#63ACBE", lwd=2)
abline(h=0)
box()

#chr1A
pos <- tajima_1A_psfl$BIN_START
pos2 <-tajima_1A_cofl$BIN_START
tajimaD_psfl <- tajima_1A_psfl$TajimaD
tajimaD_cofl <- tajima_1A_cofl$TajimaD

smoothed_psfl <- runmed(tajimaD_psfl, k=21)
smoothed_cofl <- runmed(tajimaD_cofl, k=21)

plot(pos, smoothed_psfl,axes=FALSE,ylim=c(-2,3), las=1,  type="l", xlab="", ylab="", col="#601A4A",las=1,lwd=2)
lines(pos2,smoothed_cofl, xlab="", ylab="", type="l", col="#63ACBE", lwd=2)
abline(h=0)
axis(1)
box()

#chr2
pos <- tajima_2_psfl$BIN_START
pos2 <-tajima_2_cofl$BIN_START
tajimaD_psfl <- tajima_2_psfl$TajimaD
tajimaD_cofl <- tajima_2_cofl$TajimaD

smoothed_psfl <- runmed(tajimaD_psfl, k=21)
smoothed_cofl <- runmed(tajimaD_cofl, k=21)

plot(pos, smoothed_psfl, axes=FALSE,ylim=c(-2,3), las=1, type="l", xlab="POS", ylab="", col="#601A4A",las=1,lwd=2)
lines(pos2,smoothed_cofl, xlab="", ylab="", type="l", col="#63ACBE", lwd=2)
axis(1)
abline(h=0)
box()

#chr10
pos <- tajima_10_psfl$BIN_START
pos2 <-tajima_10_cofl$BIN_START
tajimaD_psfl <- tajima_10_psfl$TajimaD
tajimaD_cofl <- tajima_10_cofl$TajimaD

smoothed_psfl <- runmed(tajimaD_psfl, k=21)
smoothed_cofl <- runmed(tajimaD_cofl, k=21)

plot(pos, smoothed_psfl, axes=FALSE,ylim=c(-2,3), las=1, type="l", xlab="", ylab="", col="#601A4A",las=1,lwd=2)
lines(pos2,smoothed_cofl, xlab="", ylab="", type="l", col="#63ACBE", lwd=2)
axis(1)
abline(h=0)
box()

#chr18
pos <- tajima_18_psfl$BIN_START
pos2 <-tajima_18_cofl$BIN_START
tajimaD_psfl <- tajima_18_psfl$TajimaD
tajimaD_cofl <- tajima_18_cofl$TajimaD

smoothed_psfl <- runmed(tajimaD_psfl, k=21)
smoothed_cofl <- runmed(tajimaD_cofl, k=21)

plot(pos, smoothed_psfl, axes=FALSE,ylim=c(-2,3), las=1, type="l", xlab="", ylab="", col="#601A4A",las=1,lwd=2)
lines(pos2,smoothed_cofl, xlab="", ylab="", type="l", col="#63ACBE", lwd=2)
axis(1)
abline(h=0)
box()

#chrZ
pos <- tajima_Z_psfl$BIN_START
pos2 <-tajima_Z_cofl$BIN_START
tajimaD_psfl <- tajima_Z_psfl$TajimaD
tajimaD_cofl <- tajima_Z_cofl$TajimaD

smoothed_psfl <- runmed(tajimaD_psfl, k=21)
smoothed_cofl <- runmed(tajimaD_cofl, k=21)

plot(pos, smoothed_psfl,axes=FALSE,ylim=c(-2,3), las=1, type="l", xlab="", ylab="", col="#601A4A",las=1,lwd=2)
lines(pos2,smoothed_cofl, xlab="", ylab="", type="l", col="#63ACBE", lwd=2)
axis(1)
abline(h=0)
box()

#Figure S1 a-b

par(mfrow=c(2,6), mar=c(2, 2, 2, 0), oma=c(1,2,1,5))

dxy1[,"pi_average"]<-((dxy1$pi_popA + dxy1$pi_popB)/2)
model1<-lm(dxy_popA_popB ~ pi_average, data=dxy1)
summary(model1)
plot(dxy_popA_popB ~ pi_average, data=dxy1, xlab="Average Pi",las=1, ylab="Dxy", ylim=c(0,0.15), xlim=c(0,0.12))
abline(model1, col="blue")
box()

dxy1A[,"pi_average"]<-((dxy1A$pi_popA + dxy1A$pi_popB)/2)
model1A<-lm(dxy_popA_popB ~ pi_average, data=dxy1A)
summary(model1A)
plot(dxy_popA_popB ~ pi_average, data=dxy1A, axes=FALSE, xlab="",las=1, ylab="", ylim=c(0,0.15), xlim=c(0,0.12))
axis(1)
abline(model1, col="blue")
box()

dxy2[,"pi_average"]<-((dxy2$pi_popA + dxy2$pi_popB)/2)
model2<-lm(dxy_popA_popB ~ pi_average, data=dxy2)
summary(model2)
plot(dxy_popA_popB ~ pi_average, data=dxy2, axes=FALSE, xlab="Average Pi",las=1, ylab="", ylim=c(0,0.15), xlim=c(0,0.12))
axis(1)
abline(model1, col="blue")
box()

dxy10[,"pi_average"]<-((dxy10$pi_popA + dxy10$pi_popB)/2)
model10<-lm(dxy_popA_popB ~ pi_average, data=dxy10)
summary(model10)
plot(dxy_popA_popB ~ pi_average, data=dxy10, axes=FALSE, xlab="",las=1, ylab="", ylim=c(0,0.15), xlim=c(0,0.12))
axis(1)
abline(model1, col="blue")
box()

dxy18[,"pi_average"]<-((dxy18$pi_popA + dxy18$pi_popB)/2)
model18<-lm(dxy_popA_popB ~ pi_average, data=dxy18)
summary(model18)
plot(dxy_popA_popB ~ pi_average, data=dxy18, axes=FALSE, xlab="",las=1, ylab="", ylim=c(0,0.15), xlim=c(0,0.12))
axis(1)
abline(model1, col="blue")
box()

dxyZ[,"pi_average"]<-((dxyZ$pi_popA + dxyZ$pi_popB)/2)
modelZ<-lm(dxy_popA_popB ~ pi_average, data=dxyZ)
summary(modelZ)
plot(dxy_popA_popB ~ pi_average, data=dxyZ, axes=FALSE, xlab="",las=1, ylab="", ylim=c(0,0.15), xlim=c(0,0.12))
axis(1)
abline(model1, col="blue")
box()

fst1 <-read.table("rush2_final_chr1_5kb.windowed.weir.fst", header = TRUE)
filter(fst1, N_VARIANTS>1 & BIN_START >= 11825001 & BIN_END <= 12200000) -> fst1_pico
subset (dxy1, start %in% fst1_pico$BIN_START)-> dxy1_pico
corr1<-lm (dxy1_pico$dxy_popA_popB ~ fst1_pico$WEIGHTED_FST)
summary(corr1)
plot(dxy1_pico$dxy_popA_popB ~ fst1_pico$WEIGHTED_FST, xlab="Fst", ylab="Dxy",las=1, ylim=c(0,0.05),xlim=c(0,1))
abline(corr1, col="blue")
box()

fst1A <-read.table("rush2_final_chr1A_5kb.windowed.weir.fst", header = TRUE)
filter(fst1A, N_VARIANTS>1 & BIN_START >= 61775001 & BIN_END <= 62550000) -> fst1A_pico
subset (dxy1A, start %in% fst1A_pico$BIN_START)-> dxy1A_pico
corr1A<-lm (dxy1A_pico$dxy_popA_popB ~ fst1A_pico$WEIGHTED_FST)
summary(corr1A)
plot(dxy1A_pico$dxy_popA_popB ~ fst1A_pico$WEIGHTED_FST,  axes=FALSE,xlab="", ylab="",las=1, ylim=c(0,0.05),xlim=c(0,1))
axis(1)
abline(corr1, col="blue")
box()

fst2 <-read.table("rush2_final_chr2_5kb.windowed.weir.fst", header = TRUE)
filter(fst2, N_VARIANTS>1 & BIN_START >= 57825001 & BIN_END <= 58175000) -> fst2_pico
subset (dxy2, start %in% fst2_pico$BIN_START)-> dxy2_pico
corr2<-lm (dxy2_pico$dxy_popA_popB ~ fst2_pico$WEIGHTED_FST)
summary(corr2)
plot(dxy2_pico$dxy_popA_popB ~ fst2_pico$WEIGHTED_FST,  axes=FALSE,xlab="Fst", ylab="",las=1, ylim=c(0,0.05),xlim=c(0,1))
axis(1)
abline(corr1, col="blue")
box()

fst10 <-read.table("rush2_final_chr10_5kb.windowed.weir.fst", header = TRUE)
filter(fst10, N_VARIANTS>1 & BIN_START >= 20825001 & BIN_END <= 20900000) -> fst10_pico
subset (dxy10, start %in% fst10_pico$BIN_START)-> dxy10_pico
corr10<-lm (dxy10_pico$dxy_popA_popB ~ fst10_pico$WEIGHTED_FST)
summary(corr10)
plot(dxy10_pico$dxy_popA_popB ~ fst10_pico$WEIGHTED_FST, axes=FALSE, xlab="", ylab="",las=1, ylim=c(0,0.05),xlim=c(0,1))
axis(1)
abline(corr1, col="blue")
box()

fst18 <-read.table("rush2_final_chr18_5kb.windowed.weir.fst", header = TRUE)
filter(fst18, N_VARIANTS>1 & BIN_START >= 625001 & BIN_END <= 725000) -> fst18_pico
subset (dxy18, start %in% fst18_pico$BIN_START)-> dxy18_pico
corr18<-lm (dxy18_pico$dxy_popA_popB ~ fst18_pico$WEIGHTED_FST)
summary(corr18)
plot(dxy18_pico$dxy_popA_popB ~ fst18_pico$WEIGHTED_FST, axes=FALSE, xlab="", ylab="",las=1, ylim=c(0,0.05),xlim=c(0,1))
axis(1)
abline(corr1, col="blue")
box()

fstZ <-read.table("rush2_final_chrZ_5kb.windowed.weir.fst", header = TRUE)
filter(fstZ, N_VARIANTS>1 & BIN_START >= 27950001 & BIN_END <= 33100000) -> fstZ_pico
subset (dxyZ, start %in% fstZ_pico$BIN_START)-> dxyZ_pico
corrZ<-lm (dxyZ_pico$dxy_popA_popB ~ fstZ_pico$WEIGHTED_FST)
summary(corrZ)
plot(dxyZ_pico$dxy_popA_popB ~ fstZ_pico$WEIGHTED_FST, axes=FALSE, xlab="", ylab="",las=1, ylim=c(0,0.05),xlim=c(0,1))
axis(1)
abline(corr1, col="blue")
box()


