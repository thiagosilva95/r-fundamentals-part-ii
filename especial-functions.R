# Funções especiais

?unlist
lst1 <- list(6, "b", 15)
lst1

unlist(lst1)

vec1 <- unlist(lst1)
vec1

lst2 <- list(v1 = 6, v2 = list(381, 2190), v3 = c(30, 217))
lst2
unlist(lst2)

mean(unlist(lst2))
round(mean(unlist(lst2)))

# do.call
# Executa uma função em um objeto
?do.call


data <- list()
N <- 100
for (n in 1:N) {
  data[[n]] = data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}
head(data)

do.call(rbind, data) # rbind une vetores pela row
class(do.call(rbind, data))
y <- list(1:3, 4:6, 7:9)
y

lapply(y, sum)
do.call(sum, y)

install.packages('plyr')
library(plyr)
y <- list(1:3, 4:6, 7:9)
y
ldply(y, sum)

# Benchmark
install.packages('rbenchmark')
library(rbenchmark)
benchmark(do.call(sum, y), ldply(y, sum))
      
# strsplit()
texto <- "Está é uma string"
strsplit(texto, " ")

dates <- c("1999-05-23")
temp <- strsplit(dates, "-")
temp






