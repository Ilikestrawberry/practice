abs(-3:3)
log(1:5)
log(1:5, base=exp(1))
log(exp(1))

log2(1:5)
log10(1:5)

exp(1:5)

y <- exp(1:5)
log(y)

factorial(1:5)
choose(5, 2)
sqrt(1:5)

options("digits")

pi
pi * 100

signif(456.789, digits=10)

round(456.789, digits=1)
round(456.789)
round(sqrt(1:5), digits=2)
round(456.789, digits=-2)

round(12.5)
round(456.789)
round(13.5)
round(-3.5)
round(-4.55)
round(-4.5)

floor(3.4444)
ceiling(3.44444)
ceiling(-3.4444)
trunc(3.444444)

3/0
Inf / Inf

is.infinite(Inf / Inf)

1.8*10^308

log(-2)

is.nan(NaN + 3)

NA
Not Available

k <- NA
k + 5
k == NA
is.na(k)
is.na(NaN)

z <- 1:5
z
sum(z)
prod(z)
max(z)
min(z)
mean(z)
median(z)
range(z)
var(z)
sd(z)

w <- c(1,2,3,4,5,NA)
w
sum(w, na.rm=TRUE)
prod(w, na.rm=TRUE)
sum(na.omit(w))
prod(na.omit(w))

v <- c(NA, NA, NA, NA, NA)
sum(na.omit(v))
max(v, na.rm = TRUE)

traffic.death <- c(842, 729, 786, 751, 844, 851, 702)

cumsum(traffic.death)
cumprod(traffic.death)
cummax(traffic.death)
cummin(traffic.death)

diff(traffic.death)
diff(c(3,4,5,NA,NA,3,4,5,6,7))
diff(1:5, lag=2)

union()
intersect()
setdiff()

p <- 1:10
q <- 6:15

union(p,q)
intersect(p,q)
setdiff(p,q)
setdiff(q,p)
setequal(p,q)
is.element(setdiff(p,q), q)
