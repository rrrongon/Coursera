corr <- function(directory="specdata/",threshold=0){
  all_files<-list.files(directory)
  cor_results <- vector(mode="numeric", length=0)
  
  index <-1
  
  for (i in 1:length(all_files)){
    datas <- read.csv(paste(directory,all_files[i],sep = ""))
    row_number <- nrow(na.omit(datas))
    
    df <- na.omit(datas)
    
    if(row_number>threshold){
      correlation_val <- cor(x = df['sulfate'],y = df['nitrate'])
      cor_results <- c(cor_results,correlation_val)
    }
  }
  cor_results
}