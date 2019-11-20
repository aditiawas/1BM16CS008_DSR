setwd("E:/Documents/College Work/7th Semester/DSR/Lab")
var1<-read.csv("Mult_Reg_Yield.csv")
set.seed(1234)
ind<-sample(2,nrow(var1),replace=TRUE,prob=c(0.7,0.3))
ind
training<-var1[ind==1,]
testing<-var1[ind==2,]

#Multiple Linear Regression
model<-lm(X.Yield ~ Time +Temperature,data=training)
summary(model)
modelnew<-lm(X.Yield ~ Time,data=training)
summary(modelnew)
plot(X.Yield ~ Time,training)
abline(modelnew,col="red")

#Prediction
testpred<-predict(modelnew,testing)
testpred
points(testing$Time,testpred,col='red')
points(testing$Time,testing$X.Yield,col='blue')
predict(modelnew,data.frame(Time=200,Temperature=240))