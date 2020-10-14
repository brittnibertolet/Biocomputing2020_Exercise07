#1: R code that replicates "head" function
dataset=read.csv(file="iris.csv", header=TRUE, stringsAsFactors=FALSE) 
#Define a variable for the number of values to return, head by default in Linux does 10
number=10
head(dataset, number)

#2
#a: print last 2 rows in last 2 columns to R ??????
last2rows=tail(dataset,2)
last2columns=last2rows[,-1:-3]
           
#b: get number of observations for each species in dataset 
occurrences<-table(unlist(dataset[, 5]))

#c: Rows with Sepal.Width>3.5
dataset[dataset[,2]>3.5,]

#d:write data for setosa to comma-delimited file 'setosa.csv' 
# Assign those values to the variable "females"
setosa=dataset[dataset[,5]=="setosa", ] 
write.csv(setosa)

#e: calculate mean, minimum, and maximum Petal.Length virginica ???
# Assign those values to the variable "virginica"
virginica=dataset[dataset[,5]=="virginica", ] 
#mean
result.mean=mean(virginica[,3], trim=0, na.rm=FALSE)
print(result.mean)
#min
result.min=min(virginica[,3])
print(result.min)
#max
result.max=max(virginica[,3])
print(result.max)