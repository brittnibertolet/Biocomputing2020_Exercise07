getwd()
setwd("/Users/Michelle/Desktop/Bioinformatics/Biocomputing2020_Exercise07/")
# load csv
iris<-read.csv("iris.csv", header=TRUE)

# prints first 6 lines of file "iris"
head(iris,6)

# prints last 2 lines of file "iris"
last2 <- tail(iris,2)
# prints only last 2 columns of last 2 lines of file "iris"
last2[,4:5]

# counts the number of observations for each species in "iris"
iris$Species
library(dplyr)
count(iris, Species)

# gets rows with Sepal.Width > 3.5
filter(iris, Sepal.Width>3.5)

# writes all setosa species data into a csv file named "setosa.csv"
setosa <- filter(iris, Species=="setosa")
write.csv(setosa, file="setosa.csv")

# calculates the mean, min, and max of Petal.Lentgh for obsfrom virginica
virginica <- filter(iris, Species=="virginica")
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)
