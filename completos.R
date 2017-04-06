setwd("C:/Users/analaura/Desktop/specdata")
directorio="C:/Users/analaura/Desktop/specdata"

completos<-function(directorio,id=1:332){
    x<-c()
    for(i in id){
        x0<-formatC(i,width=3,flag="0")
        y<-paste(x0,"csv",sep=".")
        tab<-na.omit(read.csv(y))
        tab #nueva tabla sin NA
        ren<-nrow(tab) #número de renglones que no tienen NA
        x<-c(x,ren)#hacer un vector con el número de renglones sin NA de todas las tablas
    }
    data.frame(x) #Para escribir en forma de lista el número de renglones
    #data.frame(a=id,b=max)
}

completos(directorio,1:20)
