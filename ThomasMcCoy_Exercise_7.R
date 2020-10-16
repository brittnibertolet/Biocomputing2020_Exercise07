#R script to replicate functionality of the "head" command in bash

#Convert file from table format to a data frame to be manipulated by R
loadedfile <- read.csv(filename, header = TRUE)

#Prompt the user for the input of lines they want isolated
input <- readline(prompt="Enter number of lines to be isolated: ")
input <- as.integer(input)

#Take specified number of lines
pulledlines <- loadedfile[1:input,]
pulledlines



# Manipulation of 'iris.csv' file 

# First load data provided by iris.csv
iris <- read.table(file='iris.csv', header = TRUE, sep = ",", stringsAsFactors = FALSE)

# Pull last 2 iris rows and columns
irisrows <- iris[149:150,4:5]

#Get the number of observations for each species included in the data set

## number of setosa observations
nrow(iris[iris$Species=="setosa",])
## number of versicolor observations
nrow(iris[iris$Species=="versicolor",])
## number of virginica observations
nrow(iris[iris$Species=="virginica",])

# get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5,]

# write the data for the species setosa to a comma-delimited file named 'setosa.csv'

## Get only the rows with setosa in them
setosafile <- iris[iris$Species=="setosa",]
## Get rid of column 5 that only says setosa
setosafile[ ,1:4]
## Write the table without the column or row names so it is just the data in setosa.csv
write.table(setosafile,"setosa.csv", sep = ",", row.names = FALSE, col.names = FALSE)

# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica

## Isolate data for only virginica
virginicadata <- iris[iris$Species=="virginica",]

## commands for averages
mean(virginicaData$Petal.Length)
min(virginicaData$Petal.Length)
max(virginicaData$Petal.Length)
