#Exercise 07, Biocomputing, Matthew Licursi

#Question Number 1

#Write R code that replicates the functionality we used in Linux
#using iris as an example
newfile<-read.csv("iris.csv", header=FALSE) #reads file
newfileFirst5<-newfile[1:5,] #creates new variable for the first 5 lines of the file
newfileFirst5 #prints the first 5 lines of the file

#Question Number 2

#print last 2 rows in the last 2 columns to the R terminal
iris<-read.csv(file="iris.csv") #Load iris.csv
str(iris) #Shows structure
iris[149:150, 4:5] #Prints last 2 rows in the last 2 columns


#get the number of observations for each species included in the data set
unique(iris[,5]) #prints each unique species
sum(iris == "setosa") #each sum prints the number of observations for that species
sum(iris == "versicolor")
sum(iris == "virginica")

#get rows with Sepal.Wdith > 3.5
subset(iris, Sepal.Width > 3.5)

#write the data for the species setosa to a comma-delimited file names 'setosa.csv'
write.csv(iris[iris[,5]=="setosa",], file = "setosa.csv")

#calculate the mean, minimum, and maximum of Petal.Length for observations from virgnica
virginica<-iris[iris[,5]=="virginica",] #creates dataframe for virginica observations only
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)
