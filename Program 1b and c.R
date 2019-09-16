path="E:/Documents/College Work/7th Semester/DSR/Lab"
setwd(path)
banking=read.delim("banking.csv")
val_new=vector(mode="numeric",length =length(banking$income))
banking$income<- seq.int(nrow(banking))
write.table(banking,file="banking2.csv", sep= "\t", row.names=FALSE)