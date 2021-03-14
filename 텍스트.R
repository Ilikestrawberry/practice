x <- "We have a dream"
nchar(x) ## 공백도 취급
length(x)
y <- c("we", "have", "a", "dream")
y
nchar(y)
length(y)

letters
sort(letters, decreasing=TRUE)
tolower()
toupper()

fox.says <- "It is only with the HEART that one can See Rightly"
tolower(fox.says)


fox.said <- "what is essential is invisible to the eye"
strsplit(fox.said, split=" ")
strsplit(fox.said, split="")

fox.said.words <- unlist(strsplit(fox.said, split=" ")) ## vector
fox.said.words[3]
unlist(strsplit(fox.said, split=" "))[3]
strsplit(fox.said, split=" ")[[1]][3]

p1 <- "You come at four in the afternoon, then at three I shall begin to be happy"
p2 <- "One runs the risk of weeping a little, if one lets himself be tamed"
p3 <- "What makes the desert beautiful is that somewhere it hides a well"
littleprice <- c(p1, p2, p3)
strsplit(littleprice, " ")
unlist(strsplit(littleprice, " "))
strsplit(littleprice, " ")[[3]][5]

fox.said <- "WHAT IS ESSENTIAL is invisible to th Eye"
fox.said.words <- strsplit(fox.said, " ")[[1]]
unique(fox.said.words)
unique(tolower(fox.said.words))

paste("Everybody", "wants", "to", "fly")
paste(c("Everybody", "wants", "to", "fly"))
fox.said.words
paste(fox.said.words)
paste("Everybody", "wants", "to", "fly", sep="-")
paste("Everybody", "wants", "to", "fly", sep="")
paste0("Everybody", "wants", "to", "fly")

paste(pi, sqrt(pi))
paste("25 degrees Celsius is", 25*1.8 + 32, "degree Fahrenheit")
heroes <- c("Batman", "Captain America", "Hulk")
colors <- c("Balck", "Blue", "Green")
paste(heroes, colors)

paste("Type", 1:5)
paste(heroes, "wants", "to", "fly")

paste(c("Everybody", "wants", "to", "fly"), collapse=" ")
paste(heroes, "wants", "to", "fly", collapse=", and ")

paste(heroes, "wants", "to", "fly", sep="-")
paste(heroes, "wants", "to", "fly", sep="-", collapse=";")

paste(month.abb, 1:12)
paste(month.abb, 1:12, sep="_")
paste(month.abb, 1:12, sep="_", collapse="-")

outer(c(1,2,3), c(1,2,3))

asian.countries <- c("Korea", "Japan", "China")
info <- c("GDP", "Population", "Area")
out <- outer(asian.countries, info, FUN=paste, sep="-")
as.vector(out)
x <- out <- outer(asian.countries, asian.countries, FUN=paste, sep="-")
x[!lower.tri(x)]

customer <- "Jobs"
buysize <- 10
deliveryday <- 3
paste("Hello ", customer, ", your order of ", buysize,
      " product(s) will be dilivered within ", deliveryday,
      " day(s).", sep="")

sprintf("Hello %s, your order of %s product(s) will be dilivered within %s day(s).",
        customer, buysize, deliveryday)

customer <- c("Jobs", "Gates", "Bezos")
buysize <- c(10, 7, 12)
deliveryday <- c(3, 2, 7.5)
sprintf("Hello %s, your order of %s product(s) will be dilivered within %s day(s).",
        customer, buysize, deliveryday)

sprintf("Hello %s, your order of %s product(s) will be dilivered within %.1f day(s).",
        customer, buysize, deliveryday)

substr("Data Analytics", start=1, stop=4)
substr("Data Analytics", start=6, stop=14)
substring("Data Analytics", 6)

class <- c("Data Analytics", "Data Mining", "Data Visualization")
substr(class, 1, 4)
substring(class, 6)

countries <- c("Korea, KR", "Unites States, US", "China CN")
substr(countries, nchar(countries)-1, nchar(countries))

head(islands)

landmasses <- names(islands)

grep(pattern="New", x=landmasses)
index <- grep(pattern="New", x=landmasses)
landmasses[index]
grep(pattern="New", x=landmasses, value=TRUE)
grep(pattern=" ", x=landmasses, value=TRUE)
grep(" ", landmasses, value=TRUE)

txt <- "Data Analytics is useful. Data Analytics is also interesting"

sub("Data", "Business", x=txt)  ## 일치하는 처음만 변경
gsub("Data", "Business", x=txt)

x <- c("product.csv", "customer.csv", "supplier.csv")
gsub(".csv", "", x)

words <- c("at", "bat", "cat", "chaenomeles", "chase", "chasse",
           "cheap", "check", "cheese", "chick", "hat")

grep("che", words, value=TRUE)
grep("at", words, value=TRUE)

grep("[ch]", words, value=TRUE)
grep("[at]", words, value=TRUE)

grep("ch|at", words, value=TRUE)
grep("ch(e|i)ck", words, value=TRUE)

grep("chas?e", words, value=TRUE) ## 0또는 1회
grep("chas*e", words, value=TRUE) ## 0회 이상
grep("chas+e", words, value=TRUE) ## 1회 이상
grep("ch(a*|e*)se", words, value=TRUE)

grep("^c", words, value=TRUE)
grep("t$", words, value=TRUE)

grep("^c.*t$", words, value=TRUE)
grep("^[hc]?at", words, value=TRUE)

words2 <- c("12 Dec", "OK", "http://", "<TITLETime?</TITLE>",
            "12345", "Hi there")
grep("[[:alnum:]]", words2, value=TRUE) ## 문자와 숫자
grep("[[:alpha:]]", words2, value=TRUE) ## 문자 포함된 것
grep("[[:digit:]]", words2, value=TRUE) ## 숫자 포함된 것
grep("[[:punct:]]", words2, value=TRUE) ## 문장부호 포함된 것
grep("[[:space:]]", words2, value=TRUE) ## 공백 포함된 것

\w \d \s 

grep("\\w", words2, value=TRUE)
grep("\\d", words2, value=TRUE)
grep("\\s", words2, value=TRUE)



