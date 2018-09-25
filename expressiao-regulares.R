# Expressões regulares

# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

str <- c("Expressões", "regulares", "em linguagem R",
         "permitem a busca de padrões", "e exploração de textos",
         "podemos buscar padrões em dígitos",
         "como por exemplo",
         "10992451280")

length(str)
str

# grep()
grep("ex", str, value = F)
grep("ex", str, value = T)
grep("\\d", str, value = F) # Dígitos
grep("\\D", str, value = T) # Não digitos

# grepl()
grepl("\\d+", str) # Começar e terminar com dígitos
grepl("\\D", str)

# gsub - substitui todos que encontrar
gsub("em", "|", str)
gsub("ex", "Ex", str, ignore.case = T)

# sub - substitui apenas a PRIMEIRA ocorrencia
sub("em", "EM", str)

# regexpress()
frase <- "Isso é uma string"
regexpr(pattern = "u", frase)

gregexpr(pattern = "u", frase)

str2 <- c("2678 é maior que 45 - @???!§$",
          "Vamos escrever 14 scripts R")

str2

# gsub()
gsub("\\d", "", str2)
gsub("\\D", "", str2)
gsub("\\s", "", str2)
gsub("[iot]", "Q", str2)
gsub("[[:punct:]]", "", str2)
gsub("[^@]", "", str2)




