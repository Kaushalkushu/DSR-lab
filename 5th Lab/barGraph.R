install.packages("ggplot")
library(gcookbook)
library(ggplot2)
cabbage_exp
boxplot(Weight ~  Date, data = cabbage_exp, range=0,ylab='Wieght of cabbage',xlab='Dates of cabbage')