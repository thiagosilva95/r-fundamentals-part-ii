# Funções

?sample
args(sample)
args(mean)
args(sd)

# Funções Built-in
abs(-43)
sum(c(1:5))
seq(1:5)
sort(rev(c(1:5)))
append(c(1:5),6)

vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2

# Funções dentro de funções
plot(rnorm(10))

# Criando funções
myfunc <- function(x) {x + x}
myfunc(10)
class(myfunc)

myfunc2 <- function(a, b) {
  valor = a ^ b
  print(valor)
}
myfunc2(3,2)

jogando_dados <- function() {
  num <- sample(1:6, size = 1)
  num
}

jogando_dados()

# Escopo
print(num)
num <- c(1:6)
num

# Funções sem argumentos
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")
vec3 <- c(6.5, 9.2, 11.9, 5.1)

myfunc3 <- function(...) {
  df = data.frame(cbind(...))
  print(df)
}

myfunc3(vec1)

myfunc3(vec2, vec3)
myfunc3(vec1, vec2, vec3)





