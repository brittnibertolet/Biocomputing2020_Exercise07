# 1. Open iris.csv and create code to replicate head function in Linux
iris=read.csv("iris.csv", header=TRUE, stringsAsFactors = FALSE)
n=4 # n is number of rows we want printed, so first 4 rows
head(iris, n)
# 2. load data in iris.csv file
iris=read.csv("iris.csv", header=TRUE, stringsAsFactors = FALSE)
iris
# print last 2 rows in last 2 columns
tail(iris[,c(4,5)], 2)
# get # of observations for each species included in data set
unique(iris$Species) #find names of each species
obssetosa=sum(iris$Species=="setosa")
paste("There are",obssetosa,"observations of the setosa species.")
obsversicolor=sum(iris$Species=="versicolor")
paste("There are",obsversicolor,"observations of the versicolor species.")
obsvirginica=sum(iris$Species=="virginica")
paste("There are",obsvirginica,"observations of the virginica species.")
# get rows with Sepal.Width > 3.5
bigwidth=iris[iris[,2]>3.5,]
bigwidth
# write data for species setosa to comma deliminated file
setosa=iris[iris[,5]=="setosa",]
write.csv(setosa, file="setosa.csv")
setosa.csv
# calculate mean, min, max of petal.length from virginica
virginica=iris[iris[,5]=="virginica",]
virginica
meanv=mean(virginica$Petal.Length)
paste("The mean of virginica petal length is",meanv)
minv=min(virginica$Petal.Length)
paste("The minimum petal length for virginica is",minv)
maxv=max(virginica$Petal.Length)
paste("The maximum petal length for virginica is",maxv)
