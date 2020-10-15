setwd("/Users/Walker/Desktop/Biocomputing_R/Biocomputing2020_Exercise07")
iris <- read.csv("iris.csv") #reads iris file
x <- iris # defines x as file to return lines from 
y=2 # defines y as number of lines to be returned
x[1:y,] #returns "y" lines from "x"



 # start of problem 2
tail(iris,2)[,4:5] #returns last 2 rows of last 2 columns
table(iris$Species) #shows the number of samples for each species
subset(x=iris, iris$Sepal.Width > 3.5) #shows all observations that had Sepal Width >3.5 
setosa <- subset(x=iris, iris$Species == "setosa") #creates a subset that is only observations for setosa
write.csv(setosa, file="setosa.csv") #creates a .csv file for setosa observations
virginica <- subset(x=iris, iris$Species =="virginica") #creates a subset that is only observationa for virginica
summary(virginica$Petal.Length) #this also gives 1st Q, median and 3rdQ
mean(virginica$Petal.Length) # can also use the following 3 commands 
min(virginica$Petal.Length)
max(virginica$Petal.Length)
