setwd("/Users/katrinafliotsos/Desktop/data")
#Question1, creating R code that is similar to the head function in Linux
#using "sample.csv" document
sample<-read.csv("sample.csv", header=FALSE)
#taking the first five lines of code, variable=first6
first6<-sample[1:6,]
first6

#Question2, working with iris.csv
#load iris
iris<-read.csv("iris.csv", header=TRUE)
#print last 2 rows and last 2 columns of iris
iris[149:150,4:5]
#finding number of unique species in iris file
unique(iris$Species)
#finding number of each species
setosa<-iris[iris$Species=="setosa", ]
dim(setosa)
versicolor<-iris[iris$Species=="versicolor",]
dim(versicolor)
virginica<-iris[iris$Species=="virginica",]
dim(virginica)

#get rows with Sepal.Width > 3.5
LargeWidth<-iris$Sepal.Width>3.5
which(LargeWidth=="TRUE")

#write setosa into a csv file
write.csv(setosa, file="setosa.csv")

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)


