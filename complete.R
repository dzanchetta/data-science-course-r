##Programming Assignment Week 2
##Part 2
complete <- function(directory, id = 1:332){
  idfilescomplete <- list.files(directory)
  
  ids <- c()
  nobs <- c()
  
  for (i in id){
    pathcomplete = paste(directory,"/",idfilescomplete[i], sep="")
    
    dataframecomplete = read.csv(pathcomplete, header = TRUE, sep = ",")
    
    completecases = dataframecomplete[complete.cases(dataframecomplete),]
    
    ids = c(ids,i)
    
    nobs = c(nobs,nrow(completecases))
  }
  
  data.frame(ids,nobs)
}
