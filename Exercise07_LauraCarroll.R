# For Problem Set 7 for Intro to Biocomputing
# Due on October 16
# Laura Carroll

## 1 - Create a script that works like "head" in Linux
# Define the variable with which we're going to use the head function on
# Written so that we're pulling in a file
# File name can be changed as long as it's a .csv file
classdata <- read.csv(file = "insert_name_here.csv", header = FALSE)

# Define how many lines we want to pull
numlines <- c(5) #Can change this to reflect whatever number you want

# Create an empty character vector that stores the results from the for loop
topfiles <- character(length = numlines)

# Create the for loop that pulls out the top results
for (i in 1:numlines){
  topfiles[i] <- classdata[i]
}

# Print the resulting file
topfiles

## 2 - Read in iris.csv file and do the following things
# This sets your working director. Change it so that you're in the directory that contains "iris.csv"
setwd("~/Biocomputing/R_programming/Biocomputing2020_Exercise07/")
# This reads in the file
# Using "stringsAsFactors" for the fourth part of this problem
irisflower <- read.csv(file = "iris.csv", header = TRUE,stringsAsFactors = TRUE)

## Print the last 2 rows in the last 2 columns to the R terminal
irisflower[149:150,4:5]

## Get the number of observations for each species included in the data set
# First, set the empty variables which will be added to
setosa.count <- c(0)
versicolor.count <- c(0)
virginica.count <- c(0)
# Now set up the for loop that goes through all the flower species and adds on how many
# of each species are present
for (i in 1:length(irisflower[,5])){
  if (irisflower[i,5] == "setosa"){
  setosa.count <- setosa.count + 1
  } else if (irisflower[i,5] == "versicolor"){
  versicolor.count <- versicolor.count + 1
  } else if (irisflower[i,5] == "virginica") {
  virginica.count <- virginica.count + 1
  }
}

## Get rows with Sepal.Width > 3.5
for (i in 1:length(irisflower[,2])){
  if (irisflower[i,2] > 3.5){
    print(irisflower[i,])
  }
}

## Write the data for the species setosa to a csv file name "setosa.csv"
# Since the file was written in with the command "StringsAsFactor = TRUE", 
#you have made the final column (Species) a factor variable instead of character
#Because it is a factor, you can subset it since it isn't thinking of it as a character vector
setosa <- irisflower[irisflower$Species == "setosa",]
write.csv(setosa, "~/Biocomputing/R_programming/Biocomputing2020_Exercise07/setosa.csv")

## Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
# Pull out the virginica data from the irisflower data frame
virginica <- irisflower[irisflower$Species == "virginica",]
# Run the virginica data through each function, calling upon the Petal.Length column
virginica.mean <- mean(virginica$Petal.Length)
virginica.min <- min(virginica$Petal.Length)
virginica.max <- max(virginica$Petal.Length)