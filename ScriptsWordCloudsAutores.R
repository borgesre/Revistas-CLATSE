# Carga de librerias:
library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")

# Lectura de archivo que contiene el texto de los paises de ALEA:
Country.Author.ALEA <- c(rep("Canada",4),rep("Alemania",47),rep("Turquia",2),rep("Luxemburgo",2),rep("Italia",18),"Dinamarca",rep("Rusia",2),rep("Francia",59),rep("Polonia",10),"Ukrania",rep("Suiza",5),rep("Marruecos",3),"Kuwait","Croacia",rep("China",13),rep("USA",43),rep("Brasil",9),rep("Colombia",2), rep("Portugal",4),rep("Japon",2),rep("Suecia",10),rep("UK",9),rep("Uruguay",6),rep("Belgica",2),rep("Holanda",3),rep("India",4),rep("Argentina",3),"Singapur",rep("Hungria",2),rep("Israel",8),rep("Australia",2),rep("Mexico",3),rep("Chile",3),"Tailandia","IslasMauricias","Vietnam","Espana","CostaRica")
text <- Country.Author.ALEA

# Carga de los datos como un corpus
docs <- Corpus(VectorSource(text))

dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)

# Generación de la nube de palabras:
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, c(3,.5), min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

# Lectura de archivo que contiene el texto  de los paises de BJPS:
Country.Author.BJPS <- c(rep("Brasil",106),rep("USA",22),rep("Chile",8),rep("Iran",14),rep("ArabiaSaudita",4),rep("Turquia",3),rep("China",32),rep("India",27),"Chipre",rep("Suecia",2),rep("Canada",16),rep("Auatralia",5),rep("Portugal",3),rep("Francia",9),"Polonia","Libia",rep("UK",8),rep("Israel",3),rep("Italia",7),rep("Japon",3),rep("Austria",2),"Kuwait",rep("Alemania",8),"Siria",rep("Holanda",10),rep("Pakistan",2),rep("Mexico",6),"Belgica",rep("Egipto",2),"Dinamarca",rep("Rusia",2),"Surafrica")
text <- Country.Author.BJPS

# Carga de los datos como un corpus
docs <- Corpus(VectorSource(text))

dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)

# Generación de la nube de palabras:
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, c(3,.5), min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

# Lectura de archivo que contiene el texto  de los paises de ChJS:
Country.Author.ChJS <- c(rep("Brasil",51),rep("USA",5),rep("Peru",2),"Pakistan","Canada",rep("Argelia",6),rep("India",4),rep("Mexico",3),"ArabiaSaudita","Holanda","UK",rep("Chile",4),rep("Uruguay",3),"NuevaZelanda",rep("Venezuela",2))
text <- Country.Author.ChJS

# Carga de los datos como un corpus
docs <- Corpus(VectorSource(text))

dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)

# Generación de la nube de palabras:
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, c(3,.5), min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

# Lectura de archivo que contiene el texto  de los paises de RCE:
Country.Author.RCE <- c(rep("USA",13),rep("Brasil",28),rep("Colombia",37),rep("Chile",2),"NuevaZelanda",rep("India",8),rep("Egipto",4),rep("Holanda",2),"UK",rep("Iran",7),rep("Marruecos",3),rep("Mexico",5),"Canada",rep("Espana",3),"Italia",rep("Botswana",4))
text <- Country.Author.RCE

# Carga de los datos como un corpus
docs <- Corpus(VectorSource(text))

dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)

# Generación de la nube de palabras:
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, c(3,.5), min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

# Lectura de archivo que contiene el texto  de los paises de RIO:
Country.Author.RIO <- c(rep("Mexico",63),rep("Cuba",83),rep("Francia",4),rep("Turquia",4),rep("Espana",13),rep("Ecuador",190),rep("Venezuela",3),"RepDominicana","Grecia",rep("Indonesia",6),"EmirArabesUnidos","Vietnam",rep("Jordania",11),rep("India",130),rep("Rumania",2),rep("USA",4),rep("Colombia",14),rep("CostaRica",4),"Oman",rep("Brasil",8),rep("Indonesia",4),"Angola",rep("Argelia",2),rep("Marruecos",4),rep("Argentina",9),rep("Rusia",6),rep("Belgica",2),"Uzbekistan","UK","Qatar",rep("Peru",9),rep("Chile",6),rep("Irak",3),"Canada")
text <- Country.Author.RIO

# Carga de los datos como un corpus
docs <- Corpus(VectorSource(text))

dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)

# Generación de la nube de palabras:
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, c(3,.5), min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
