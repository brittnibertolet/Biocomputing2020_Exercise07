#function that asks for the file you want to head and the amount of lines (rows) you would like to print
head_like_unix <- function(some_file,x){
  dat<-read.csv(file = some_file, header = FALSE)
  return(dat[0:x, ])
}
