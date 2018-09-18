# Instalando pacotes

install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)
#library(dtplyr)

# Usando o read.csv2()
system.time(df_teste1 <- read.csv2("TemperaturasGlobais.csv"))

#Usando o read.table()
system.time(df_teste2 <- read.table("TemperaturasGlobais.csv"))

# Usando o fread()
?fread
system.time(df <- fread("TemperaturasGlobais.csv"))

# Criando subsets dos dados carregados
cidadesBrasil <- subset(df, Country == 'Brazil')
cidadesBrasil <- na.omit(cidadesBrasil)
head(cidadesBrasil)
nrow(df)
nrow(cidadesBrasil)
dim(cidadesBrasil)
# Preparação e organização

#






















