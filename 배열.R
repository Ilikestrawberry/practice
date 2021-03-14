a <- 1:24
dim(a) <- c(3,4,2)
a

array(1:12, c(2,3,2))

ary <- array(1:12, c(2,3,2))

ary[1,3,2]

ary[,1,2]
ary[,1,2,drop=0]

t(ary[2,,])


c1 <- c(12345,4355)
c2 <- c('fds','ad','314','234')

array(1:24,c(2,4,3),dimnames = list(c1,c2))
