library("rpart")
library("rpart.plot")
play<-c('yes','no','yes','no','yes','yes','yes','yes','yes','no')
outlook<-c('rainy','rainy','overcast','sunny','rainy','sunny','rainy','sunny','overcast','sunny')
temp<-c('cool','cool','hot','mild','cool','cool','cool','hot','mild','mild')
humid<-c('normal','normal','high','high','normal','normal','normal','normal','high','high')
Wind<-c('FALSE','TRUE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','TRUE','TRUE')
pd<-cbind(play,outlook,temp,humid,Wind)
pd
pd=data.frame(pd)
pd
summary(pd)
fit=rpart(play ~ outlook + temp + humid + Wind, data=pd, control=rpart.control(minsplit=1))
fit
str(fit)
rpart.plot(fit,type=4,extra=1)
rpart.plot(fit,type=4,extra=2,clip.right.labs=FALSE,varlen=0,faclen=0)
