product <- list(id="A001",
                name="Mouse",
                price=30000)
product

product$price <- 40000
product[[3]]
product[["price"]]

product[3] <- 50000
product["price"] <- 60000 ##값이 1개일 때는 괄호 하나만 써도 됨
product

product[[3]] <- c(30000, 40000)
product[3] <- list(c(40000, 50000))
product$price <- c(5000, 3000)

product[1:3] <- list(c('a', 'b', 'c'))
product

product[1:3] <- list('A', 'B', 'C')

product

product[[4]] <- c("Domestic", "Export")
product

product$madein <- c("Korea", "China")
product

product[6:9] <- list(0.12, 0.15, 0.22, 0.27)

names <- c("Mon", "Tue", "Wed", "Thur",
           "Fri", "Sat", "Sun")
values <- c(842, 729, 786, 751, 844, 851, 702)

traffic.death <- list()
traffic.death[names] <- values
traffic.death
traffic.death["Sun"] <- "702"

traffic.death[["Fri"]] <- NULL

traffic.death[1:2] <- NULL
traffic.death

traffic.death < 750
traffic.death[traffic.death < 750] <- NULL
traffic.death

names(traffic.death)[2] <- c("WOWWW")

traffic.death
