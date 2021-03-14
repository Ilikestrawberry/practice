id <- c("A001", "A002", "A003")
name <- c("Mouse", "Keyboard", "USB")
price <- c(30000, 90000, 50000)
product <- data.frame(id, name, price,
                      stringsAsFactors = FALSE)
product

product <- rbind(product, c("A004", "Monitor", 250000))

new.rows <- data.frame(id=c("A005", "A006"),
                       name=c("Memory", "CPU"),
                       price=c(35000, 320000)) ## 열 이름이 같아야 함
new.rows

product <- rbind(product, new.rows)
product

product <- cbind(product,
                 madein=c("Korea", "China",
                          "China", "Korea",
                          "Korea", "USA"))
product
product$madein <- c("Korea", "China",
                    "China", "Korea",
                    "Korea", "USA")
product
new.cols <- data.frame(manufacturer=c("Logitech",
                                      "logitech",
                                      "Samsung",
                                      "Samsung",
                                      "Samsung",
                                      "Intel"),
                       quantity=c(20, 15, 50, 30, 40, 10))

product <- cbind(product, new.cols)
product

cols1 <- data.frame(x=c("a", "b", "c"),
                    y=c(1,2,3))
cols2 <- data.frame(x=c("alpha", "beta", "gamma"),
                    y=c(100,200,300))
cbind(cols1, cols2) # 열 이름이랑 상관없이 확장

df1 <- data.frame(sex="female", months=1, weight=3.5)
df2 <- data.frame(sex="male", months=3, weight=4.8)
df3 <- data.frame(sex="male", months=4, weight=5.3)
df4 <- data.frame(sex="female", months=9, weight=9.4)
df5 <- data.frame(sex="female", months=7, weight=8.3)
lst <- list(df1, df2, df3, df4, df5)
lst

str(lst)

lst[[1]]
rbind(lst[[1]], lst[[2]])

do.call(rbind, lst)

lst1 <- list(sex="female", months=1, weight=3.5)
lst2 <- list(sex="male", months=3, weight=4.8)
lst3 <- list(sex="male", months=4, weight=5.3)
lst4 <- list(sex="female", months=9, weight=9.4)
lst5 <- list(sex="female", months=7, weight=8.3)
lst <- list(lst1, lst2, lst3, lst4, lst5)
lst

lst[[1]]
lst[1]
as.data.frame(lst[[1]]) ## list -> data.frame

lapply(lst, as.data.frame) ## list를 함수로 처리
do.call(rbind, lapply(lst,as.data.frame))
