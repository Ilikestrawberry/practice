1 + 2
c(1, 2, 3) + c(4, 5, 6)
c(1, 2, 3) * c(4, 5, 6)
c(1, 2, 3) / c(4, 5, 6)
c(1, 2, 3) ^ c(4, 5, 6)

c(1:10) + c(21:40)

c(10, 20 ,30) %% c(3, 5, 7)
c(10, 20 ,30) %/% c(3, 5, 7)

d <- c(1, 2, 3) + c(4, 5, 6, 7, 8)

c(1, 2, 3) + 10

d

isTRUE(d)

v <- pi
w <- 10/3

isTRUE('a')
!v
as.numeric(!!v)

any(-3:-5 > 0)
all(-3:-5 < 0)

sqrt(2)^2 == 2
sqrt(2)^2 - 2
identical(sqrt(2)^2, 2)

all.equal(sqrt(2)^2, 1)

all.equal(sqrt(2)^2, 3)
isTRUE(all.equal(sqrt(2)^2, 3))

fruit <- c("Apple", "Banana", "Strawberry")
food <- c("Pie", "Juice", "Cake")
paste(fruit, food)
paste(fruit, "Juice")
