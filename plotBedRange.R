library(ggplot2)
bed<-read.table("dsb.bed",head=FALSE)
bed<-bed[,3]-bed[,2]
bed<-data.frame(bed)
colnames(bed)<-c('range')
ggplot(bed)+
  geom_density(aes(x=range))+
  coord_cartesian(xlim=c(500,3000))
