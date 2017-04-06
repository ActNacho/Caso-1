setwd("C:/Users/analaura/Desktop/specdata")
directorio="C:/Users/analaura/Desktop/specdata"

corr<-function(directorio,horizonte=0){
    max<-c()
    x<-c()
    for(i in 1:332){
        x0<-formatC(i,width=3,flag="0")
        y<-paste(x0,"csv",sep=".")
        tab<-na.omit(read.csv(y))
        #tab #nueva tabla sin los NA
        ren<-nrow(tab) #número de renglones que no tienen NA
        if(ren>horizonte){
            col2<-data.frame(tab[,2])
            col3<-data.frame(tab[,3])
            correlacion<-cor(col2,col3)
            max<-c(max,correlacion) #vector que acumula los resultados de las correlaciones
        }
       
    }
    max #vector con todas las correlaciones, que es el resultado final :)
}

corr(directorio,0)






