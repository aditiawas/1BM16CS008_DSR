library(e1071)
setwd("E:/Documents/College Work/7th Semester/DSR/Lab")
traindata<-read.csv("samplebayes.csv")

bayesmodel <- naiveBayes(Enrolls ~ Age+Income+JobSatisfaction+Desire,traindata)
bayesmodel

testdata<-data.frame(Age="<=30",Income="Medium",JobSatisfaction="No",Desire="Fair",Enrolls="")
results <- predict (bayesmodel,testdata)
results
modell = naiveBayes(Enrolls ~ ., traindata, laplace=.01)
results1<-predict(modell,testdata)
results1
