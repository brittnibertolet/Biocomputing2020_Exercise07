#  question 1: Write R code that replicates the functionality of the head 
#  function we used in Linux. Your code should define a variable with the 
#  file to return lines from and a variable representing the number of lines 
#  to be returned from the top of the indicated file. The selected file content
#  should be printed to the terminal in R.
setwd("/Users/kevincatalfano/Documents/Notre Dame/Year 1/Intro to Biocomputing/Biocomputing2020_Exercise07")
# step1: define var to store the lines of text file superfun.txt
lines<-read.delim("superfun.txt", header=FALSE, sep=" ")

# step2: use the head function to yield the top 12 lines inside the variable COVID
COVID<-head(lines, n = 12L)

#  Load data in 'iris.csv' and write R code to do the following
#  print the last 2 rows in the last 2 columns to the R terminal
#  get the number of observations for each species included in the data set
#  get rows with Sepal.Width > 3.5
#  write the data for the species setosa to a comma-delimited file names 
# ‘setosa.csv’
#  calculate the mean, minimum, and maximum of Petal.Length for observations 
# from virginica
# goal #1 print last 2 lines in last 2 columns. 
# goal #2 Then print sepal width > 3.5
# goal #3 get all the data from setosa and put in csv. 
# goal #4 calculate mean, min and max of petal length for virginicia 

# goal #1 step1: read in the csv file 'iris.csv'
flower<-read.csv(file="iris.csv", header = TRUE, stringsAsFactors = FALSE)
# step2: print the last 2 columns of iris.csv
lastcol<-flower[ ,4:5]
# step3: print the last 2 lines of lastcol. Accomplishes goal #1
lastlines<-tail(lastcol, n=2L)

#goal #2 step 1: put column 2 in vector width from vector flower
width<-flower[ ,2]
# step2: use a logic test to find sepal width greater than 3.5
sepal3.5<- width>3.5
# step 3: return the values that were "TRUE". 
sepal3.5index<-sepal3.5(c(TRUE, FALSE), 1000, rep = TRUE)
sum(sepal3.5index)

#goal #3 step1: use flower data frame to print all rows with "setosa"
print(flower)
setosa<-flower[flower[,5]=="setosa",]
# step2: extract these data to a .csv file
setosa.csv<-write.csv(setosa, "/Users/kevincatalfano/Documents/Notre Dame/Year 1/Intro to Biocomputing/Biocomputing2020_Exercise07/setosa.csv", row.names = FALSE)

#goal #4 step1: use flower data frame to print all rows with "virginica"
print(flower)
virginica<-flower[flower[,5]=="virginica",]
#step2: select for petal length column
virginicalength<-virginica[,3]
#step3: calculate the mean, min and max of selected data
mean(virginicalength)
min(virginicalength)
max(virginicalength)

