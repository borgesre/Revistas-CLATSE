# Carga de librerias:
library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")

# Lectura de archivo que contiene el texto:
text <- readLines(file.choose())

# Carga de los datos como un corpus
docs <- Corpus(VectorSource(text))

# Eliminación de palabras de parada
docs <- tm_map(docs, removeWords, stopwords("english"))
# Eliminción de espacios blancos adicionales
docs <- tm_map(docs, stripWhitespace)

# Generación de la matriz de términos:
dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)

# Generación de la nube de palabras:
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, c(2,.3), min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"), main ="Title")
