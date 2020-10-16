#Kayla Wood Biocomputing Tutorial Excercise 7
#set working to excercise 7 folder
setwd("/Users/kaylawood/Desktop/Biocomputing2020_Exercise07")
## Question 1
#a script to replicate the fubctionality of head (from Linux)
# using wages.csv   
wages <- read.csv("wages.csv")
wages[1:6,]
## Question 2
# the last 2 rows in the last 2 columns in iris.csv 
iris <- read.csv("iris.csv")
iris[149:150, 4:5]
#the number or observations for each species included in the data set
setosa <- iris[iris$Species=="setosa",]
dim(setosa)
versicolor <- iris[iris$Species=="versicolor",]
dim(versicolor)
virginica <- iris[iris$Species=="virginica",]
dim(virginica)
#get rows with Sepal.Width >3.5
subset(iris, Sepal.Width > 3.5)
#write the setosa species data to setosa.csv
write.csv(setosa, 'setosa.csv')
# mean Petal.Length for virginia 
PetalLength <- virginica$Petal.Length
mean(PetalLength)
# minimum Petal.Length for virginia 
min(PetalLength)
# maximum  Petal.Length for virginia 
max(PetalLength)