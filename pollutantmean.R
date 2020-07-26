pollutantmean<-function(directory,pollutant,id=1:332){
    v=vector()
    for(i in id){
            name<-sprintf("%03d.csv", i)
            filepath <- paste(directory,name, sep="/")
            data<-read.csv(filepath)
            pol<-data[,pollutant]
            pol<-pol[!is.na(pol)]
            v=c(v,pol)
            
    
  }
  mean(v)
  
}


