##Programming Assignment Week 2
##Part 3
corr <- function(directory, threshold = 0){
  idfilescorr <- list.files(directory)
  
  correlation <- vector()
  
  for(i in 1:length(idfilescorr)){
    pathcorr = paste(directory,"/",idfilescorr[i], sep="")
    
    dataframecorr = read.csv(pathcorr, header = TRUE, sep = ",")
    
    completecases = dataframecorr[complete.cases(dataframecorr),]
    
    if(nrow(completecases) >= threshold){
      correlation = c(correlation,
                      cor(completecases$nitrate,completecases$sulfate))  
    } 
  }
  correlation
}
