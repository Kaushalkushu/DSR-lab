df<-data.frame(a=1:3, d=2:4, cc=3:5, b=4:6)
df
df$a
Data<-subset(df, select=-a)
Data;df
Data<-subset(Data, select = -c(d,b))
Data;df
Data<-subset(df, select = -c(d:b))
Data