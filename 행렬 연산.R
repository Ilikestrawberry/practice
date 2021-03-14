mtx <- matrix(1:6, 2, 3)
mtx
mtx + 1

a <- matrix(1:6, 2, 3)
b <- matrix(6:1, 2, 3)

a+b
a-b
a*b
c <- matrix(6:1, 3, 2)

a+c
a*c
a %*% c

a <- matrix(1:6, 2, 3, byrow = 0)
a

mtx
mtx + 1:3


typeof(mtx)
rowSums(mtx)
colSums(mtx)
rowMeans()
colMeans()

t(mtx)
1:5
t(1:5)

mtx[2,]
t(mtx[2,])
mtx

class(mtx)
class(rowSums(mtx))
