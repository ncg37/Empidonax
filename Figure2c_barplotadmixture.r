
require(dplyr)
require(RColorBrewer)

tbl = read.table("./final_filter_todos_thinned1000.2.Q")

#read sample names into data frame indTable, and name columns appropriately
indTable = read.table("./empids_popmap_ordered",
                      col.names = c("Sample","Pop"))

head(indTable)
#check that "indtable" is correct

# Merge both data frames
ordered = cbind(tbl, indTable)

ordered2<- arrange(ordered, Pop, V1)

head(ordered2)
#check that this is correct

# Instruction to name bars:
barNaming <- function(vec) {
  retVec <- vec
  for (k in 2:length(vec)) {
    if (vec[k - 1] == vec[k])
      retVec[k] <- ""
  }
  return(retVec)
}

#set the colors to use
col<-brewer.pal(4,"Set1")


pdf("admixture1000_may.pdf",width=15,height=8)
par(mfrow=c(1,1)) 
barplot(t(as.matrix(ordered2[,1:4])), col = col,
   names.arg = barNaming(ordered2$Sample),
   main = "Admixture", #title
   las = 2, #orientation of labels, can be 0,1,2,3
   cex.axis = 0.8, #size of the axis
   cex.names = 0.5, #size of the labels
   cex.lab = 1) #size of the axis title
dev.off()
# END BARPLOT
