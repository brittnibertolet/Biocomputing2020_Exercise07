# 1. Write R code that replicates the functionality of the head function we used in Linux.
## Your code should define a variable with the file to return lines from
file_input <- read.csv("iris.csv", header = TRUE, sep = ",")
## and a variable representing the number of lines to be returned from the top of the indicated file.
number_lines <- 5
## The selected file content should be printed to the terminal in R.
head_output <- file_input[1:number_lines,]
head_output

# 2. Load the data contained in the provided ‘iris.csv’ file and 
# write R code to do the following things
iris <- read.csv("iris.csv", header = TRUE, sep = ",")
## print the last 2 rows in the last 2 columns to the R terminal
dim(iris)
last_2 <- iris[149:150,4:5]
last_2
## get the number of observations for each species included in the data set
occurences <- data.frame(table(unlist(iris)))
dim(occurences)
Species.Occurences = tail(occurences, n = 3)
Species.Occurences
## get rows with Sepal.Width > 3.5
over_3.5_width <- iris[iris$Sepal.Width > 3.5,]
over_3.5_width
## write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa_data <- data.frame(iris[iris$Species == "setosa",])
write.csv(setosa_data, "setosa.csv")
## calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_lengths <- iris[iris$Species == "virginica",3]
calculations <- summary(virginica_lengths)
calculations
