#Exercise 7
#1) Write Rcode that replicates the functionality of the head 
##function we used in Linux. Your code should define a variable with 
##the file to return lines from and a variable representing the number 
##of lines to be returned from the top of the indicated file. 
##The selected file content should be printed to the terminal in R

iris<-read.csv(file = "iris.csv", header = TRUE, stringsAsFactors = FALSE)
x<-5 
iris[1:x,]
#If you wanted to index a different range you'd have to update x first
##The 1:x gives specifies the range of that will be the "head" 

#2)Load the data contained in the provided 'iris.csv' file and write
##Rcode to do the following things
#.print the last 2 rows in the last 2 columns to the R terminal
#.get the number of observations for each species included in the data set
#.get rows with Sepal.Width > 3.5
#.write the data for the species setosa to a comma-delimited file names 'setosa.csv'
#.calculate the mean, minimum, and maximum of Petal.Length for observations from virginica

#The following line of code reads in the csv file and stores it as a dataframe called iris
iris<-read.csv(file = "iris.csv", header = TRUE, stringsAsFactors = FALSE)

#The following code give us the dimensions of the dataframe iris
dim(iris)
#We know there are 150 rows and 5 columns, we've been asked to take the last 2 row
##and last 2 columns which means rows 149:150 and columns 4:5
iris[149:150,4:5]

#To separate the different species of iris
virginica=iris[iris[,5]=="virginica", ] 
virginica
versicolor=iris[iris[,5]=="versicolor", ] 
versicolor
setosa=iris[iris[,5]=="setosa", ]
setosa
#Looking at the first number that is returned when we use the function 
##dim() lets us know how many rows there are, and in this case how
##many entries there are for a given species
dim(virginica)
dim(veriscolor)
dim(setosa)
#We see that each speices has 50 entries/observations

#The following code uses indexing to return rows in the iris 
##dataframe that have a value greater than 3.5 in the 2nd column
## sepal.width 
iris[iris[,2]>3.5,]

#Write setosa into a csv file. This will create a csv file named
##setosa in your current wd. 
write.csv(setosa, file = "setosa.csv", row.names = FALSE)

#To calculate the mean, min, and max of the petal, we have to couple
##those functions with indexing to ensure the fuctions are performed 
##only on the first column of the dataframe, Petal Length
mean(virginica[,1])
min(virginica[,1])
max(virginica[,1])




