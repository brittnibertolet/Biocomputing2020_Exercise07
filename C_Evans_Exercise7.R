# Exercise 7 - Early days of Linux
# Connor Evans


# 1 - R code that replicates the functionality of the head function in Linux

# define a variable with the file from which lines are returned
file <- read.table(file='iris.csv',sep=',',header=TRUE) #choose any file you want; in this case it is iris.csv
  
# Variable representing number of lines to be returned from the top of the indicated file
headLines <-  5 # can be changed as needed

# print file content to the terminal
topLines <-  file[1:headLines,]
topLines



# 2 Load the iris.csv data (again) and do the following steps:
iris <-  read.csv("iris.csv", sep = ",")

# Print the last two rows in the last two columns to the R terminal
rows <-  NROW(iris) # find out how many rows iris has
cols <-  NCOL(iris) # find out how many columns iris has
iris[(rows-1):rows,(cols-1):cols] # terminal output

# Get the number of observations for each species included in the dataset
setosaNum <- NROW(iris[iris$Species == "setosa",])
versicolorNum <-  NROW(iris[iris$Species == "versicolor",])
virginicaNum <-  NROW(iris[iris$Species == "virginica",])

# 50 for setosa, 50 for versicolor, 50 for virginica
paste("There are ", setosaNum, " setosas, ", versicolorNum, " versicolors, and ", virginicaNum, " virginicas.", sep = "")

# Get rows for Sepal.Width > 3.5
highSW <- iris[iris$Sepal.Width > 3.5, ]

# Write the data for the species setosa to the comma-delimited file "setosa.csv"
write.csv(iris[iris$Species == "setosa",], file = "setosa.csv", )

# Calculate the mean, minimum, and maximum for the observations of Petal.Length for virginica
 # Mean
paste("Mean is: ", mean(iris[iris$Species == "virginica", 3]), sep = "")

 # Min
paste("Minimum is: ", min(iris[iris$Species == "virginica", 3]), sep = "")

 # Max
paste("Maximum is: ", max(iris[iris$Species == "virginica", 3]), sep = "")
