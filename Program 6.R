library(cluster)
library(ggplot2)
path="E:/Documents/College Work/7th Semester/DSR/Lab"
setwd(path)
crime<-read.delim("crime.csv")

#State,Murder,Assault,UrbanPop,Rape
row.names(crime) <- crime$State
crime$State<-NULL

gr<-data.frame(k=NA,wss=NA)
for (i in 2:nrow(crime)-1){
  km = kmeans(crime,i,nstart=10)
  po<-cbind(k=i,wss=km$tot.withinss)
  gr<-rbind(gr,po)
}

lo <- loess(gr$wss~gr$k,na.rm=TRUE)
plot(gr$k,gr$wss)
lines(predict(lo), col='red', lwd=2)

# taking k =3
km = kmeans(crime,3,nstart=10)
c1 = row.names(crime[km$cluster==1,])
c2 = row.names(crime[km$cluster==2,])
c3 = row.names(crime[km$cluster==3,])

take<-c("Murder","Assault")
plot(crime[km$cluster==1,take],col="red",xlim=c(min(crime["Murder"]),max(crime["Murder"])),
				ylim=c(min(crime["Assault"]),max(crime["Assault"])))
points(crime[km$cluster==2,take],col="blue",)
points(crime[km$cluster==3,take],col="green")
