complete <- function(directory="specdata/",id=1:332){
  all_files<-list.files(directory)
  df <- data.frame(x = numeric(length(id)), y = numeric(length(id)), stringsAsFactors = FALSE)
  
  index <-1
  
  for (i in id){
    print(all_files[i])
    datas <- read.csv(paste(directory,all_files[i],sep = ""))
    row_number <- nrow(na.omit(datas))
    df$x[index] <- i
    df$y[index] <-row_number
    index <- index+1
  }
  df
}