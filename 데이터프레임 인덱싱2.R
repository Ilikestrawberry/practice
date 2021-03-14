head(iris)

r <- iris$Sepal.Length / iris$Sepal.Width
head(r)

r <- with(iris, Sepal.Length / Sepal.Width)
head(r)

with(iris, {
  print(summary(Sepal.Length))
  plot(Sepal.Length, Sepal.Width)
  plot(Petal.Length, Petal.Width)
})


with(iris, {
  stats <- summary(Sepal.Length)
  stats
}) ## 작업공간 밖에서는 변수 사용할 수 없음 / <<- 사용


with(iris, {
  stats.keep <<- summary(Sepal.Length)
  stats.nokeep <- summary(Sepal.Length)
})
stats.keep

iris$Sepal.Ratio <- iris$Sepal.Length / iris$Sepal.Width

iris <- within(iris, 
               Sepal.Ratio < Sepal.Length / Sepal.Width)
head(iris)

attach(iris) ## iris를 메모리에 적재함
search()

r <- Sepal.Length / Sepal.Width
head(r)

detach(iris) ## 메모리에서 제거
search()

attach(iris)
iris$Sepal.Length <- 0
head(iris$Sepal.Length)
head(Sepal.Length) ## attach 한 값은 변경 안됨.
detach(iris)

attach(iris)
Sepal.Width <- Sepal.Width * 10 ## 복사본을 가지고 작업
head(iris$Sepal.Width)
head(Sepal.Width)
ls()

detach(iris)
rm(Sepal.Width)

Sepal.Length <- c(4.5, 5.3, 6.7)
Sepal.Length
attach(iris) ## 먼저 있던 데이터가 우선

plot(Sepal.Length, Sepal.Width)
