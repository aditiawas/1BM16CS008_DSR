buffTail<-c(10,1,37,5,12)
gardenBee<-c(8,3,9,6,4)
redTail<-c(18,9,12,4,7)
carderBee<-c(8,27,6,32,23)
honeyBee<-c(12,13,16,9,10)
df<-data.frame(buffTail,gardenBee,redTail,carderBee,honeyBee)
row.names(df)<-c("Thistle","Vipers","Golden Rain","Yellow Alfalfa","Blackberry")
df
mat1<-data.matrix(df)
mat1
y<-list(mat1,row.names(df))
y