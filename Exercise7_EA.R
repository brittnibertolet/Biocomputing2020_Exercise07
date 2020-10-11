# Exercise 1:
# Create as many variables as you would like to have columns for
names <- c('Emma','John','Leah','Simon')
age <- c(21, 20, 19, 19)
major <- c('bio','math','chem','bio')

# Merge to create a data frame
students_df = data.frame(names, age, major)

# Display top rows, change n for however many rows you want to display
head(students_df, n = 2)

# If you want to only look at one of the columns:
head(students_df$names, n = 2)
head(students_df$age, n = 2)
head(students_df$major, n = 2)

# Exercise 2:
# print the last 2 rows in the last 2 columns to the R terminal
iris <- read.csv("Biocomputing2020_Exercise07/iris.csv", stringsAsFactors = F)
str(iris)
iris_matrix <- matrix(c(iris$Petal.Width, iris$Species), ncol = 2)
head(iris_matrix)
tail(iris_matrix, n = 2)

# get the number of observations for each species included in the data set
sum_setosa <- sum(with(iris, Species=="setosa"))
sum_virginica <- sum(with(iris, Species=="virginica"))
sum_versicolor <- sum(with(iris, Species=="versicolor"))


# get rows with Sepal.Width > 3.5
iris_Sepal <- matrix(iris$Sepal.Width)
iris_Sepal[which(iris_Sepal[,1] > 3.5),]

# write the data for the species setosa to a comma-delimited file named 
# ‘setosa.csv’
irisSetosa <- iris[grep("setosa", iris$Species), ]
write.csv(irisSetosa, "setosa.csv")

# calculate the mean, minimum, and maximum of Petal.Length
# for observations from virginica
irisVirginica <- iris[grep("virginica", iris$Species), ]
irisVirginica
mean(irisVirginica$Petal.Length)
min(irisVirginica$Petal.Length)
max(irisVirginica$Petal.Length)
#or
summary(irisVirginica$Petal.Length)