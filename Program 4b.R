library(gcookbook)
boxplot(heightIn ~ trunc(ageYear), data = heightweight, xlab = "Age in Years",
        ylab = "Height in Inches", main = "Height and Weight Stats")