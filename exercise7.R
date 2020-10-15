#load the necessary .csv file into R and named it "iris"
iris <- read.csv(file = "iris.csv", header = TRUE, stringsAsFactors = FALSE)
#variable representing the number of lines to be returned from indicated file
num_lines <- 8
#takes the first # of rows of iris
head(iris, n= num_lines)
#take last two columns of iris
iris_pw_species <- iris[tail(c(4,5))]
#take last two rows of iris
tail(iris_pw_species, n=2)
#number of observations for each species
sum(iris == "setosa")
sum(iris == "versicolor")
sum(iris == "virginica")
#get rows with Sepal.Width > 3.5
iris[iris[,2]>3.5,]
#write data for species setosa to file "setosa.csv"
write.csv(iris[iris[,5]=="setosa",], file = "setosa.csv")
#calculate mean, minimum, maximum of petal lengths for virginica
virginica <- iris[iris[,5]=="virginica",]
mean(virginica$Petal.Length)
min(virginica$Petal.Length, na.rm = FALSE)
max(virginica$Petal.Length, na.rm = FALSE)
