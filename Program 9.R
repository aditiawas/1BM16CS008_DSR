library("rpart")
library("rpart.plot")
setwd("E:/Documents/College Work/7th Semester/DSR/Lab")
play_decision <- read.csv("MatchPlay.csv")

summary(play_decision)
fit=rpart(play ~ outlook + Temperature  +Humidity +Wind,method="class",data=play_decision,control=rpart.control(minsplit=1),parms=list(split='information'))
fit

rpart.plot(fit,type=4,extra=1)
rpart.plot(fit,type=4,extra=2,clip.right.labs=FALSE,varlen=0,faclen=0)

# predicting
dataf <- data.frame(outlook='rainy',Temperature='mild',Humidity='high',Wind='FALSE')
pred<-predict(fit,dataf)
pred

