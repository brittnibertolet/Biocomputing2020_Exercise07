# 1. Open iris.csv and create code to replicate head function in Linux
iris=read.csv("iris.csv", header=TRUE, stringsAsFactors = FALSE)
n=4 # n is number of rows we want printed, so first 4 rows
head(iris, n)
# 2. load data in iris.csv file
iris=read.csv("iris.csv", header=TRUE, stringsAsFactors = FALSE)
iris
# 2a. print last 2 rows in last 2 columns
tail(iris[,c(4,5)], 2)
# 2b. get # of observations for each species included in data set
#find names of each species
unique(iris$Species) 
# get # obs for setosa
obssetosa=sum(iris$Species=="setosa")
paste("There are",obssetosa,"observations of the setosa species.")
# get # obs for versicolor
obsversicolor=sum(iris$Species=="versicolor")
paste("There are",obsversicolor,"observations of the versicolor species.")
# get # obs for virginica
obsvirginica=sum(iris$Species=="virginica")
paste("There are",obsvirginica,"observations of the virginica species.")
# 2c. get rows with Sepal.Width > 3.5
bigwidth=iris[iris[,2]>3.5,]
bigwidth
# 2d. write data for species setosa to comma deliminated file
# find rows with species setosa
setosa=iris[iris[,5]=="setosa",]
# make comma deliminated file of setosa obs
write.csv(setosa, file="setosa.csv")
setosa.csv
# 2e. calculate mean, min, max of petal.length from virginica
# get all petal length values for virginica
virginica=iris[iris[,5]=="virginica",]
virginica
# get mean for virginica petal length
meanv=mean(virginica$Petal.Length)
paste("The mean of virginica petal length is",meanv)
# get minimum petal length virginica
minv=min(virginica$Petal.Length)
paste("The minimum petal length for virginica is",minv)
# get max petal length virginica
maxv=max(virginica$Petal.Length)
paste("The maximum petal length for virginica is",maxv)
