v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)

data.frame(v1, v2, v3)
data.frame(row.names=v1, v2, v3)

product <- data.frame(id=v1, name=v2, price=v3,
                      stringsAsFactors=FALSE)
str(product)

mat <- matrix(c(1,3,5,7,9,
                2,4,6,8,10,
                2,3,5,7,11), ncol=3)
mat
as.data.frame(mat)
number <- as.data.frame(mat)
number
colnames(number) <- c("odd", "even", "prime")
number

v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)

lst <- list(v1, v2, v3)
lst

product <- as.data.frame(lst)
colnames(product)
colnames(product) <- c("id", "name", "price")
product

nrow(product)
ncol(product)

length(product) ##col 갯수 
