x<-seq(1:6)
x
y<-LETTERS[1:6]
y
z<-c('c','m','s','d','w','k')
z
dat<-data.frame(x,y,z)
z1<-c(1.2, 3.4, 5.6, 7.8, 5.5, 1.8)
z1
dat<-cbind(dat, z1)
dat
str(dat)
nrow(dat)
ncol(dat)
class(dat)
help(attach)
dat[,4]
dat$z1
attach(dat)
dat[3,]
