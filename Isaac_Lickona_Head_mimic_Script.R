#R script to replicate functionality of the head function in linux

#Take user input of file to be read
filename <- readline(prompt="Enter file name: ")

#load specified file into R
loaded <- read.csv(filename, header = TRUE)

#Get user input for number of lines to be captured
lineinput <- readline(prompt="Enter number of lines to be captured: ")
lineinput <- as.integer(lineinput)

#Extract specified number of lines
pulledlines <- loaded[1:lineinput,]
pulledlines

