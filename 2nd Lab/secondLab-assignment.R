BuffTail <- c(10, 1, 37, 5, 12)
GardenBee <- c(8, 3, 9, 6, 4)
RedTail <- c(18, 9, 12, 4, 7)
CarderBee <- c(8, 27, 6, 32, 23)
HoneyBee <- c(12, 13, 16, 9, 10)


#mat<-matrix(nrow = 5, ncol = 5, byrow = F, data = c(10, 1, 37, 5, 12, 8, 3, 9, 6, 4, 18, 9, 12, 4, 7, 8, 27, 6, 32, 23, 12, 13, 16, 9, 10))
#mat<-matrix(nrow = 5, ncol = 5, byrow = F, data = c(BuffTail, GardenBee, RedTail, CarderBee, HoneyBee))
#mat
df <- data.frame(BuffTail, GardenBee, RedTail, CarderBee, HoneyBee, row.names = c("Thistle", "Vipers", "Golden Rain", "Yellowalfala", "Blackberry"))
#df <- as.data.frame(mat, row.names = c("Thistle", "Vipers", "Golden Rain", "Yellowalfala", "Blackberry"))

colnames(df) <- c("BuffTail", "GardenBee", "RedTail", "CarderBee", "HoneyBee")
df

mat <- data.matrix(df)
mat
colnames(mat)

mat2 <- mat
colnames(mat2) <- c(NULL, NULL, NULL, NULL, NULL)
colnames(mat2)
lis <- list(1:5)
mat2

lis[1] <- list(mat2[1,])
lis[2] <- list(mat2[2,])
lis[3] <- list(mat2[3,])
lis[4] <- list(mat2[4,])
lis[5] <- list(mat2[5,])

lis

number <- 12
stri <- "Any String"
realNo <- 123.453

thirdB <- list(number, stri, realNo)
thirdB
names(thirdB) <- c("Integer", "String", "Real Number")
thirdB
