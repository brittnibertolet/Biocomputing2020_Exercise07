#Challenge 1
#Write R code that replicates the functionality of the head function in Linus
#setwd and define a variable with a file to return lines from
setwd("~/Documents/biocomputing/Biocomputing2020_Exercise07/")
data<-read.csv("iris.csv", header = TRUE, stringsAsFactors = FALSE)
#select the number of lines to be returned
FirstFiveFlowers <- data[1:5,]
#Print the selected number of lines to R terminal 
print(FirstFiveFlowers)

#Challenge 2
#part 1: Print the last 2 rows in the last 2 columns
#Define variable with the last two columns of the iris.csv file
last2columns <- data[,c(4,5)]
#Select the last two rows in the last 2 columns
last2rowsandcolumns <- tail(last2columns,2)
#print the selected rows and columns to R terminal
print(last2rowsandcolumns)

#part 2: get the number of observation for each species included in the data set 
#Define separate variables for each species
setosa=data[data[,5]=="setosa", ] 
versicolor=data[data[,5]=="versicolor", ] 
virginica=data[data[,5]=="virginica", ] 
#Count the number of observations by counting the number of rows for each species
nrow(setosa)
nrow(versicolor)
nrow(virginica)

#part 3: get rows with Sepal.Width > 3.5
#Define variable with obersavations that have a Sepal width greater than 3.5
sepalWidth <- data[which(data$Sepal.Width>3.5),]

#part 4: write the data for the species of setosa to a comma delimited file named 'setosa.csv'
setosa=data[data[,5]=="setosa", ] 
write.csv(setosa, "setosa.csv",row.names=FALSE, quote = FALSE)
read.csv("setosa.csv")

#part 5: calculate the mean, minimum, and maximum of Petal.Length for obervations from virginica
#define a variable with only petal length observations for virginica
virginicapetal=data[data[,5]=="virginica",3 ] 
#calculate mean = 5.552
mean(virginicapetal)
#calculate minimum = 4.5
min(virginicapetal)
#calculate maximum = 6.9
max(virginicapetal)

