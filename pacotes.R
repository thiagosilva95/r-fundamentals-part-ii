search() # lista pacotes carregados

install.packages(c("ggvis", "tm", "dplyr"))
# Carregando os pacotes instalados
library(ggvis)
library(tm)
require(dplyr)

search()
?require
detach(package:dplyr)
?attach

# Lista de funções dentro de um pacote
ls(pos = "package:tm")
# Funções dentro de funções
ls(getNamespace("tm"), all.names = TRUE)

# Detalhes sobre as funções
lsf.str("package:tm")
lsf.str("package:ggplot2")
library(ggplot2)
lsf.str("package:ggplot2")


# O R possui um conjunto de datasets preinstalados
library(MASS)
data()
plot(lynx)
iris$Sepal.Length
sum(iris$Sepal.Length)

attach(iris)
sum(Sepal.Length)






