#rnorm( ,150, 2)
install.packages("ggplot2")
install.packages("gcookbook")
library(gcookbook)
library(ggplot2)

cabbage_exp
str(cabbage_exp)

ggplot(mpg, aes(displ, hwy, colour = class)) + geom_point()

#graph <- rnorm(100, 150, 2)
#df <- data.frame(graph)
#ggplot(df, aes()) + geom_point()

plot(graph, dnorm(graph, 150, 2), xlab = "N", ylab = "occurances", main = "Graph")
plot(graph, rnorm(graph, 150, 2), xlab = "N", ylab = "occurances", main = "Graph")

mytable <- table(cabbage_exp$Weight, cabbage_exp$Date)
mytable2 <- prop.table(mytable, 1)

barplot(mytable2, beside = T)
barplot(mytable2, beside = T, legend = rownames(mytable2))
barplot(mytable2, position_dodge(), beside = T, legend = rownames(mytable2), ylab = "val", col = c("blue", "yellow"))

ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar))+ geom_bar(stat="identity", position="dodge")+ geom_text(aes(label=Weight), vjust=1.5, colour="white", position=position_dodge(.9), size=3)
