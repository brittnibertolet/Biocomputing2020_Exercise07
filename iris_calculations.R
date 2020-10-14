#reads iris.csv file to import data into r
iris_data<-read.csv(file = "iris.csv", header = TRUE)

#prints data in last two lines and rows
iris_data[149:150,4:5]

#sums data observations for each type
sum(iris_data[,5]=="setosa")
sum(iris_data[,5]=="versicolor")
sum(iris_data[,5]=="virginica")

#sums Sepal.Width data observations for each type
sum(iris_data[,2]>3.5)

#creates matrix with only setosa data
setosa=iris_data[iris_data[,5]=="setosa", ]
write.csv(setosa)

#calculates the mean, minimum, and maximum of Petal.Length for observations from virginica
viginica=iris_data[iris_data[,5]=="virginica",]
result.mean=mean(viginica[,3], trim=0,na.rm=FALSE)
result.mean
result.min=min(viginica[,3])
result.min
result.max=max(viginica[,3])
result.max
