path="E:/Documents/College Work/7th Semester/DSR/Lab"
setwd(path)
dataval=read.csv("SacramentoRealEstate.csv")
plot(dataval$sq__ft,dataval$price)