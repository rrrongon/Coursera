pollutantmean <- function(directory,pollutant,id=1:332){
  mean_sum <- 0
  all_files<-list.files(directory)
  
  for (i in id){
    datas <- read.csv(paste(directory,all_files[i],sep = ""))
    if(pollutant=='sulfate'){
      mean_val <- mean(na.omit(datas$sulfate))
    }else{
      mean_val <- mean(na.omit(datas$nitrate))
    }
    mean_sum = mean_sum + mean_val
  }
  
  final_mean <- mean_sum/(length(id))
  final_mean
}

