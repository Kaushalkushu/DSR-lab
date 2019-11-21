library(cluster)
x<-c(185,170,168,179,182,188,145,141,125)
y<-c(72,56,60,68,72,77,45,67,23)

plot(x, y)
cls<-data.frame(x,y)
cls1<-data.matrix(cls)

km=kmeans(cls1,2,nstart=10)
km

plot(cls1[km$cluster ==1,],pch = 19,xlim=c(min(cls1[,1]),max(cls1[,1])),ylim=c(min(cls1[,2]),max(cls1[,2])))
points(cls1[km$cluster == 2,], pch = 4)
