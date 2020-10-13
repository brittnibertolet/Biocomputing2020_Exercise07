# Exercise 7
# Chelsea Southworth

# 1. R code that replicates functionality of "head" in Linux
  # Define a variable within the file to return lines from
  # Define a variable representing the number of lines to be returned
    #from the top of the indicated file
  # Selected file content should be printed to the terminal in R

# Usage: head(x, n = y )
  # x <- data.frame
  # y <- number.of.lines.to.be.returnedL

x <- iris
y <- 10
x[1:y,]
# gives you the first 10 lines of the iris dataframe


# 2. Load the data in the iris.csv file

# Used the "Import Dataset" "From CSV" in the environment window of
library(readr)
iris <- read_csv("~/Downloads/iris.csv")
View(iris)

# a. print the last 2 rows in the last 2 columns to the R terminal
iris[c(149,150),c(4,5)]

# b. get the number of obs for each species included in the dataset
unique(iris$Species)
count(subset(x = iris, iris$Species == "setosa"))
count(subset(x = iris, iris$Species == "versicolor"))
count(subset(x = iris, iris$Species == "virginica"))

# c. get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5,]

# d. write the data for the species setosa to a csv file "setosa.csv"
setosa.data <- iris[iris$Species == "setosa",]
write.csv(setosa.data,"~/Downloads/setosa.csv")

# e. calculate the mean, min, and max of Petal.Length for obs from virginica
virginica.petal.length <- iris[iris$Species == "virginica",3]
mean(virginica.petal.length$Petal.Length)
range(virginica.petal.length$Petal.Length)
