v <- 1:12
dim(v) <- c(3,4)
v

v <- 1:12
matrix(data=v, nrow=3, ncol=4)
matrix(data=v, nrow=3, ncol=4, byrow=TRUE)

rnames <- c('R1', 'R2', 'R3')
cnames <- c('C1', 'C2', 'C3', 'C4')

matrix(data=v, nrow=3, ncol=4, byrow=TRUE,
       dimnames=list(rnames,cnames))

matrix(0,3,4)

d <- 1:11
matrix(d, 3, 4)

mat <- matrix(NA, 3, 4)
mat
str(mat)

dim(mat)[1]
dim(mat)[2]

nrow(mat)
ncol(mat)
length(mat)

rbind()
cbind()

v1 <- c(1:5)
v2 <- c(6:10)

rbind(v1,v2)
cbind(v1,v2)
rbind(v2,v1)

cbind(1:3, 4:6, matrix(7:12, 3, 2))
rbind(matrix(1:6, 2, 3), matrix(7:12, 2, 3))
