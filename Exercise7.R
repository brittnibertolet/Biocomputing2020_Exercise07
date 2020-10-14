#Challenge 1
#Write R code that replicates the functionality of the head function in Linus
setwd("~/Documents/biocomputing/Biocomputing2020_Exercise07/")
data<-read.csv("iris.csv", header = TRUE, stringsAsFactors = FALSE)
FirstFiveFlowers <- data[1:5,]
FirstFiveFlowers
      