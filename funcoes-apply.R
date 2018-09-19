lista1 <- list(a = (1:10), b = (45:77))
lista1

valor_a = 0
valor_b = 0
for (i in lista1$a) {
  valor_a = valor_a +i
}
for (j in lista1$b) {
  valor_b = valor_b + j
}
print(valor_a)
print(valor_b)

?sapply

# Calculando cada elemento da lista com sapply
sapply(lista1, sum)

sapply(lista1, mean)

?apply

x <- matrix(rnorm(9), nr = 3, byrow = T)
x

apply(x, 1, mean) # Linha
apply(x, 2, mean)  # Coluna
apply(x, 1, plot)

escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

escola

# Cauculando a média por aluno
escola$Media = NA
escola

escola$Media = apply(escola[, c(2, 3, 4)], 1, mean)
escola
escola$Media = round(escola$Media)
escola

install.packages('sqldf')
require('sqldf')

escola2 <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Alan', 'Alice', 'Alana'),
                      Semestre = c(1, 1, 1, 2, 2, 2),
                      Matematica = c(90, 80, 85, 87, 56, 79),
                      Geografia = c(100, 78, 86, 90, 98, 67),
                      Quimica = c(76, 56, 89, 90, 100, 87))

escola2

sqldf('select aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2 group by aluno')
tapply(escola2$Matematica, escola2$Aluno, sum)

?by

# A coluna "aluno" aqui não é necessária
sqldf("select aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2 group by semestre")
by(escola2[, c(2, 3, 4)], escola2$Semestre, colSums)

lista1 <- list(a = (1:10), b = (45:77))
lista1
lapply(lista1, sum)
sapply(lista1, sum)

?replicate
