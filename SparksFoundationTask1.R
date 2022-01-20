#SparksFoundation
#DataScienceAndBusinessAnalyticsIntern
#TASK1-Prediction using Supervised ML



#import libraries
library(e1071)
library(utils)
library(ggplot2)

# convert data into Data Frame
df <- as.data.frame(read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv"))

#Plot 
graph <- ggplot(df, aes(x=Hours, y=Scores))+ geom_point() + geom_smooth(method="lm", col="black")
print(graph)

#Model the Data using Linear Regression
linearMod <- lm(Scores ~ Hours, data=df)

#Predict Score for given data
x <- 9.25

p <- predict(linearMod, newdata=data.frame(Hours=x))
print(paste0("The Pedicted Score for ",x," Hour(s) is ", p))#