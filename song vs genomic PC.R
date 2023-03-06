data <-read.csv("PCA_all.csv", header =TRUE, row.names =1)

vec <- as.factor(c("admix","cofl","admix","admix","psfl","psfl","admix","admix","admix","cofl","admix","cofl","psfl","psfl","cofl","psfl","cofl","cofl","cofl","admix","admix",
         "admix","psfl","admix","psfl","psfl","psfl","admix","cofl","admix","cofl","psfl","cofl","admix"))
data[,"song_type"]<-vec

model<-lm(PC1_genome~PC1_song, data= data)

palette(c("#999999", "#63ACBE", "#601A4A"))

plot(data$PC1_song, data$PC1_genome, col = data$song_type, pch =19, ylab="Genomic PC1", xlab="Song PC1")
abline(model)
