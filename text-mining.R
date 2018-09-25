# Text mining
install.packages(c("tm", "SnowballC", "wordcloud", "RColorBrewer"))
library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)
options(warn=-1)

# Carregando os dataset
df <- read.csv('questoes.csv', stringsAsFactors = F)
head(df)

# Criando um Corpus - conjunto de texto estruturado
dfCorpus <- Corpus(VectorSource(df$Question))
class(dfCorpus)

# Removendo pontuação
dfCorpus <- tm_map(dfCorpus, removePunctuation)
dfCorpus

# Removendo palavras específicas em inglês
dfCorpus <- tm_map(dfCorpus, removeWords, stopwords('english'))

# várias versões de uma palavra convertidas em uma única
dfCorpus <- tm_map(dfCorpus, stemDocument)

# Removendo palavras específicas
dfCorpus <- tm_map(dfCorpus, removeWords, c('the', 'this', stopwords('english')))

# Wordcloud
wordcloud(dfCorpus, max.words = 100, random.order = F)

# Exemplo 2
install.packages("tm")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")

library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")

# Lendo o arquivo
arquivo <- "http://www.sthda.com/sthda/RDoc/example-files/martin-luther-king-i-have-a-dream-speech.txt"
texto <- readLines(arquivo)
texto

# Carregando os dados como Corpus
docs <- Corpus(VectorSource(texto))

# Pré-processamento
inspect(docs)
toSpace <- content_transformer(function (x, pattern) gsub(pattern, " ", x))
docs <- tm_map(docs, toSpace, "/")
docs <- tm_map(docs, toSpace, "@")
docs <- tm_map(docs, toSpace, "\\|")

# Converter o texto para minúsculo
docs <- tm_map(docs, content_transformer(tolower))

# Remove números
docs <- tm_map(docs, removeNumbers)

# Remove palavras comuns do idioma inglês
docs <- tm_map(docs, removeWords, stopwords("english"))

docs <- tm_map(docs, removeWords, c("blabla1", "blabla2"))

# Remove pontuação
docs <- tm_map(docs, removePunctuation)

# Rempove espaços extras
docs <- tm_map(docs, stripWhitespace)

# Text steming - juntar palavras que aparecem com muita frequencia
docs <- tm_map(docs, stemDocument)


dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m), decreasing = T)
d <- data.frame(word = names(v), freq = v)
head(d, 10)

set.seed(1234)
wordcloud(words = d$word, freq = d$freq, min.freq = 1,
          max.words = 200, random.order = TRUE,
          colors = brewer.pal(8, "Dark2"))

# Tabela de frequência
findFreqTerms(dtm, lowfreq = 4)
findAssocs(dtm, terms = "freedom", corlimit = 0.3)
head(d, 10)

# Gráficos de barras com as palavras mais frequentes
barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
