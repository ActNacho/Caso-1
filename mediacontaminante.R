setwd("C:/Users/analaura/Desktop/specdata")
directorio="C:/Users/analaura/Desktop/specdata"

mediacontaminante <- function(directorio , contaminante= "sulfate", id= 1:332){    
    
    if (contaminante== "sulfate") { 
        columna= 2
    } else if(contaminante == "nitrate"){
        columna=3
    } 
     vector<-0
     suma<-0
     for (i in id){
         x0<-formatC(i,width = 3,flag="0")
         x1<-paste(x0,"csv",sep=".")
         tab<-read.csv(x1) #variable que contiene la tabla i
         vector<-length(na.omit(tab[,columna]))+vector
         suma<-sum(tab[,columna],na.rm=TRUE)+suma
         
         #media<-mean(tab[,columna],na.rm=TRUE)
         #vector<-vector+media
         
     }
     y<-suma/vector
     y
}

mediacontaminante(directorio,"sulfate",1:332)
