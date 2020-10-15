#Exercise_07 
#Kevin, Lucia, Austin

#Number One
#set the file you would like to pull the amount of lines from as the var
#your_file and read in your file 
your_file <- "iris.csv"
setwd("/Users/kevinmichael/Desktop/BioComp/data-shell/Biocomputing2020_Exercise07")
df <- read.table(file=your_file, header=T, sep=",")

#now, set how many lines you would like to see
#we use 7 as an arbitrary example
lines <- 7
head <- df[1:lines, ]
#now print 
print(head)


#Number Two



#part B
#to find the number of each species we subset on species and sum all occurences
num_setosa <- sum(df$Species=="setosa")
num_versicolor <- sum(df$Species=="versicolor")
num_verginica <- sum(df$Species=="virginica")
