setwd("/Users/Walker/Desktop/Biocomputing_R")
x <- iris # defines x as file to return lines from 
y=2 # defines y as number of lines to be returned
x[1:y,] #returns "y" lines from "x"



iris <- read.csv("iris.csv") # start of problem 2
tail(iris,2)[,4:5]
table(iris$Species)
subset(x=iris, iris$Sepal.Width > 3.5)
setosa <- subset(x=iris, iris$Species == "setosa")
write.csv(setosa, file="setosa.csv")
virginica <- subset(x=iris, iris$Species =="virginica")
summary(virginica$Petal.Length) #this also gives 1st Q, median and 3rdQ
mean(virginica$Petal.Length) # can also use the following 3 commands 
min(virginica$Petal.Length)
max(virginica$Petal.Length)
