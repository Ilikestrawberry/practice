num <- 0:30
num

prime <- c(2,3,5,7,11,13,17,19)
prime[1]
prime[1:3]

prime[c(1,1,5,5)]

indices <- c(1,3,5,7)
prime[indices]

prime[-1]
prime[-1:-3]

length(prime)

prime[-length(prime)]

prime <- c(2,4,5,7,11,14,17,18)
prime
prime[2] <- 3
prime
prime[c(6,8)] <- c(13,19)
prime

prime <- c(2,3,5,7,11,13,17,19)
length(prime)
prime[9] <- 23
prime
prime[c(10,11)] <- c(29,31)
prime

prime[15] <- 37
prime

prime <- c(2,3,5,7,11,13,17,19)
prime[prime < 10]

prime %% 2 == 0

seq_along(prime) %% 2 == 0
prime[seq_along(prime) %% 2 == 0]
prime[c(TRUE, FALSE)]

which()
which.max()
which.min()

rainfall <- c(21.6,23.6,45.8,77.0,102.2,133.3,
              327.9,348.0,137.6,49.3,53.0,24.9)
rainfall > 100
which(rainfall > 100)
which.max(rainfall)
which.min(rainfall)
month.name
month.name[which(rainfall > 100)]
month.abb[which(rainfall > 100)]

ls()

rainfall[rainfall > 100]
rainfall[which.min(rainfall)]

traffic.death <- c(842,729,786,751,844,851,702)
names(traffic.death) <- c('Mon', 'Tue', 'Wed', 'Thu', 
                          'Fri', 'Sat', 'Sun')
traffic.death
traffic.death["Mon"]
weekend <- c('Fri', 'Sat', 'Sun')
traffic.death[weekend]

traffic.death > 800
traffic.death[traffic.death > 800]
names(traffic.death[traffic.death > 800])

ncol(traffic.death)
nrow(traffic.death)
dim(traffic.death)
class(traffic.death)
