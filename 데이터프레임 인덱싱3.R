?subset()
head(mtcars)
subset(mtcars, subset=(mpg > 30), select=mpg)
subset(mtcars, subset=(cyl == 4 & am == 0),
       select=c(mpg, hp, wt))
subset(mtcars, subset=(mpg > mean(mpg)),
       select=c(mpg, cyl, wt))

head(USArrests)
cor(USArrests)
subset(USArrests, select=-UrbanPop)
cor(subset(USArrests, select=-UrbanPop))
cor(subset(USArrests, select=-c(UrbanPop, Rape)))

library(sqldf)
data("mtcars")
sqldf("select * from mtcars where mpg > 30", 
      row.names=TRUE)
sqldf("select * from mtcars where cyl=6 order by mpg",
      row.names=TRUE)
sqldf("select avg(mpg) as avg_mpg, avg(wt) as avg_wt, gear from mtcars where cyl in (4, 6) group by gear",
      row.names=TRUE)

data(iris)
sqldf("select distinct Species from iris")
sqldf("select * from iris limit 3")
sqldf("select avg([Sepal.Length]) from iris where Species='setosa'")
sqldf('select avg("Sepal.Length") from iris where Species="setosa"')
# 행 이름에 . 가 있는 경우엔 ""로 감싸서 써줌
