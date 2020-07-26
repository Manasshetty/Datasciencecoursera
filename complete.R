complete<-function(directory,id){
  vect<-vector()
  count<-vector()
  for(i in id){
    name<-sprintf("%03d.csv",i)
    filepath<-paste(directory,name,sep="/")
    data<-read.csv(filepath)
    vect<-c(vect,i)
    df=data[complete.cases(data),]
    count<-c(count,nrow(df))
  }
  data.frame(id=vect,nobs=count)
}