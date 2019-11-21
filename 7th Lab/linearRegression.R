var1<-read.csv("C:/Users/kiran/Downloads/Mult_Reg_Yield.csv")
var1
set.seed(1234)
ind<-sample(2,nrow(var1),replace=TRUE,prob=c(0.7,0.3))
ind
length(ind)
training<-var1[ind==1,]
testing<-var1[ind==2,]

model<-lm(X.Yield ~ Time +Temperature,data=training)
model
summary(model)
plot(X.Yield ~ Time,training)
abline(model,col="red")
modelnew<-lm(X.Yield ~ Time,data=training)
modelnew
summary(modelnew)
plot(X.Yield ~ Time,training)
abline(modelnew,col="red")
newypred<-fitted(modelnew)
newypred
pred<-predict(modelnew,training)
pred
testpred<-predict(modelnew,testing)
testpred
predict(model,data.frame(Time=200,Temperature=240))
predict(modelnew,data.frame(Time=200,Temperature=240))
