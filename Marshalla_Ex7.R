# Dan Marshalla - Biocomputing Exercise 7

# Question 1

## Write R code to replace functionality of 'head' in Linux
file.for.head <- read.csv(file=" ")     # the .csv file to be used with 'head' function goes between " "
lines.returned <-                       # the number of lines to be returned starting from the top of dataframe
file.for.head[1:lines.returned, ]       # function that replicates 'head'


# Question 2

## print last 2 rows in the last 2 columns
iris <- read.csv(file="iris.csv")    # load the file
str(iris)                            # see how many obs and variables there are
iris[149:150,4:5]                    # print last 2 rows and last 2 columns

## get the number of observations for each species
unique(iris[,5])                          # find out what species are included
str(iris[iris$Species=="setosa", ])       
str(iris[iris$Species=="versicolor", ])   # gives number of observations for each individual species
str(iris[iris$Species=="virginica", ])

## get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5, ]              # returns rows where value in Sepal.width column is >3.5

## write data from setosa to csv file setosa.csv
write.csv(iris[iris$Species=="setosa", ], file = "setosa.csv")

## calculate mean, max, min of Petal.length for observations of "virginica"
virginica<-iris[iris$Species=="virginica",]    # create dataframe of just virginica observations
mean(virginica$Petal.Length)
max(virginica$Petal.Length)                    # mean, max, and min of Petal.length
min(virginica$Petal.Length)
