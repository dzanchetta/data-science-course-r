##Programming Assignment Week 2
##Part 1
pollutantmean <- function(directory, pollutant, id = 1:332){
  idfiles <- list.files(directory)
  pollutants = 0
  for(i in id){
    path = paste(directory,"/",idfiles[i],sep="")
    
    tempdata = read.csv(path,header = TRUE, sep = ",")
    
    pollutants = c(pollutants, tempdata[,pollutant])
  }
  
  pollutants_mean = mean(pollutants,na.rm = TRUE)
  
  pollutants_mean
}
