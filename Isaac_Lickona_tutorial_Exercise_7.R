#Perform analysis on provided iris data



#load data into workspace 

iris = read.csv("iris.csv", header=TRUE, stringsAsFactors = FALSE)

#Print last two columns of last two rows to the R terminal
print(iris[(nrow(iris)-1):nrow(iris), (ncol(iris)-1):ncol(iris)])

#Get the number of observations for each species 

#Preallocate counts as 0
setosanum = 0
versicolornum = 0
virginicanum = 0

#Loop through iris and add a count to each species count when column 5 martches that species name
for (i in iris[,5]){
  if (i == "setosa"){
  setosanum = setosanum+1
}
  if (i == "versicolor"){
  versicolornum = versicolornum+1
}
  if (i == "virginica")
  virginicanum = virginicanum+1
  }
  
#Send Counts to R terminal
print("setosa observations:")
setosanum
print("versiocolor observations:")
versicolornum
print("virginica observations:")
virginicanum

#Get the rows with sepal width >3.5

widesepals = iris[iris[,2]>3.5,]
print("Data for observations with sepals of wifth greater than 3.5")
widesepals

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa = iris[iris[,5]=="setosa",]
write.csv(setosa, file = "setosa.csv")


#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica

#extract data only for virginica observations
virginica = iris[iris[,5]=="virginica",]
meanpetal = mean(virginica[,3])
minpetal = min(virginica[,3])
maxpetal = max(virginica[,3])

#send mean, min, and max to R terminal
print("virginica mean, minimum, and maximum petal length")
print("Mean:")
meanpetal
print("Max:")
maxpetal
print("Min:")
minpetal














