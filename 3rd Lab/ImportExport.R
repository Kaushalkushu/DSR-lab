setwd("C:/Documents and Settings/exam/My Documents/RDataset")
getwd()

health_facilities = read.csv("health-facilities-gh.csv")
str(health_facilities)

head(health_facilities)

health_facilities$Region

newColumn <- health_facilities$Latitude
newColumn
newColumn<-newColumn + 42

health_facilities <- cbind(health_facilities,newColumn)

plot(health_facilities$newColumn, health_facilities$Longitude, main = "Co-ordinates", xlab = "Latitude", ylab = "Longitude", pch = ".", frame = FALSE)

summary(health_facilities)

# writing as tsv file
write.csv(health_facilities, file="C:/Documents and Settings/exam/My Documents/RDataset/writtenData.csv")
write.table(health_facilities, file="C:/Documents and Settings/exam/My Documents/RDataset/writtenDataTSV.tsv", sep="\t")

read.delim("C:/Documents and Settings/exam/My Documents/RDataset/writtenDataTSV.tsv")

