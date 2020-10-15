#Exercise_07 
#Kevin, Lucia, Austin

#Number One
#set the file you would like to pull the amount of lines from as the var
#your_file and read in your file 
your_file <- "iris.csv"
setwd("/Users/kevinmichael/Desktop/BioComp/data-shell/Biocomputing2020_Exercise07")
dat <- read.table(file=your_file, header=T, sep=",")

#now, set how many lines you would like to see
#we use 7 as an arbitrary example
lines <- 7
head <- dat[1:lines, ]
#now print 
print(head)


#Number Two

# part A
# read data frame from iris.csv
read.csv(file = "iris.csv", header = TRUE, Sep = ",")
# rename iris.csv dat
dat <- read.csv(file = "iris.csv", header = TRUE, Sep = ",")
# print the last two rows in the last two columns to R terminal
print(dat[(nrow(dat)-1):nrow(dat), (ncol(dat)-1):ncol(dat)])

# part B
#to find the number of each species we subset on species and sum all occurences
num_setosa <- sum(dat$Species=="setosa")
num_versicolor <- sum(dat$Species=="versicolor")
num_verginica <- sum(dat$Species=="virginica")

# part C
# Get rows with sepal.width >3.5
dat[dat[ ,2]>3.5, ]

# part D
# write the data for the species setosa to a comma-delimited file named "setosa.csv"
setosa_dat<-dat[dat[ ,5]=="setosa",]
write.csv(setosa_dat,file="setosa.csv",row.names=FALSE)

#to find the mean min and max, we subset on species virginica and find each parameter
virginica <- subset(dat, df$Species=="virginica")
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)
