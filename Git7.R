# 1. Open iris.csv and create code to replicate head function in Linux
iris=read.csv("iris.csv", header=TRUE, stringsAsFactors = FALSE)
n=4 # n is number of rows we want printed, so first 4 rows
head(iris, n)
# 2. load data in iris.csv file
iris=read.csv("iris.csv", header=TRUE, stringsAsFactors = FALSE)
iris
# print last 2 rows in last 2 columns
tail(iris[,c(4,5)], 2)
# get # of observations for each species included in data set
unique(iris$Species)
nrow(iris[iris[,5]=="setosa",])
nrow(iris[iris[,5]=="versicolor",])
nrow(iris[iris[,5]=="virginica",])
# get rows with Sepal.Width > 3.5
iris[iris[,2]>3.5,2]
# write data for species setosa to setosa.csv
setosa.csv=iris[iris[,5]=="setosa",]
setosa.csv
# calculate mean, min, max of petal.length from virginica
virginica=iris[iris[,5]=="virginica",]
virginica
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)
