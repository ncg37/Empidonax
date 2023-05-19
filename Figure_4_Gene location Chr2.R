
coord<-as.data.frame(read.csv("snps_coord.csv", header=TRUE))


#CHR2-----
plot (FST_2 ~ POS_2, ylim=c(0.675, 1), xlim=c(57775000,58225000),data=coord, las=1, main="CHR 2", pch =20, cex=1)
segments(57776388 , 0.8, 57833880, 0.8) #DCDC2 **
segments(57838362 , 0.75, 57849256, 0.75) #MRS2  XP_032602428.1 
segments( 57850356, 0.7, 57872615, 0.7) #GPLD1  XP_032602766.1 
segments(57873342  , 0.8, 57884135, 0.8) #ALDH5A1  XP_030121454.2
segments(57885218, 0.75, 57895002, 0.75) #KIAA0319 XP_032602764.1 

segments( 57929351, 0.8, 57938809, 0.8) #LOC114065428 skin secretory protein xP2-like 

segments(57949101  , 0.7, 57957572, 0.7) #HUS1  XP_002194851.2 
segments(57966790, 0.8,  58003359, 0.8) #ICE1 XP_030121517.1 

segments( 58009234, 0.8, 58010948, 0.8) #LOC114065432

segments(58021191, 0.75,  58087270, 0.75) #NFX1 XP_032602777.1 


segments(58103198 , 0.7, 58167258, 0.7) #LOC114065426 #SLC12A7-like 
segments( 58121517, 0.8, 58122735, 0.8) #LOC114065427    

segments( 57896344, 0.8, 57938848, 0.8) #LOC114065433 dyslexia-associated protein KIAA0319-like


