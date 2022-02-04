
library(dplyr)
#ejercicio4.1
movies <- read.csv("C:/Users/Mustella 3D/Downloads/movies.csv");
budget2<- data.frame(movies[order(-movies$budget),])
mm22 <- data.frame(budget2$title, budget2$budget)
head(mm22,10)

#ejercicio4.2
aa <- data.frame(movies$title, movies$revenue)
revenue32<- data.frame(aa[order(-aa$movies.revenue),])
head(revenue32,10)
#ejercicio4.3
aa <- data.frame(movies$title, movies$voteCount)
vote<- data.frame(aa[order(-aa$movies.voteCount),])
head(vote,1)
#ejercicio4.4
aa <- data.frame(movies$title, movies$voteAvg)
vote<- data.frame(aa[order(aa$movies.voteAvg),])
head(vote,1)


#ejercicio4.5


aa <- data.frame(movies$title, movies$releaseDate)
byYear <- data.frame(aa[order(aa$movies.releaseDate),])
year1 <- data.frame(table(substring(byYear$movies.releaseDate,1,4)))
year <- as.numeric(substring(byYear$movies.releaseDate,1,4))

hist(year,breaks = 200)


#Ejerecicio 4.6
aa <- data.frame(movies$title,movies$genres, movies$releaseDate)
byYear <- data.frame(aa[order(aa$movies.releaseDate),])
byYear2 <- data.frame(tail(byYear,20))

r <- list(byYear2$movies.genres)

wewe <- data.frame( V2 = unlist(strsplit(r,"|",fixed= TRUE)))
barplot(table(wewe),  xlab="generos", 
        ylab="frequencia", 
        main="Frecuencia de los generos de las 20 peliculas mas recientes",)


r <- list(movies$genres)

wewe2 <- data.frame( V2 = unlist(strsplit(as.character(r),"|",fixed= TRUE)))
barplot(table(wewe2),  xlab="generos", 
        ylab="frequencia", 
        main="Frecuencia de los generos de todas las peliculas",)

#Ejercicio 4.7
aa <- data.frame(movies$title,movies$genres, movies$revenue)
byRevenue <- data.frame(aa[order(-aa$movies.revenue),])

print(head(byRevenue,1))

#Ejercicio 4.8a
aa <- data.frame(movies$actorsAmount, movies$revenue)
byRevenue <- data.frame(aa[order(-aa$movies.revenue),])
l <- data.frame(head(byRevenue,10))
barplot(height = l$movies.revenue ,names = l$movies.actorsAmount)

#Ejercicio 4.8b
a <- data.frame(movies$actorsAmount, movies$releaseDate)
byYear <- data.frame(a[order(a$movies.releaseDate),])
byYear$year <- year

lastYears <- data.frame(tail(byYear,7000))
lastYears$movies.releaseDate <- NULL
lastYears2 <- aggregate(movies.actorsAmount~year,lastYears,sum)


barplot(height = lastYears2$movies.actorsAmount, names.arg = lastYears2$year, xlab = "year", ylab = "actor amount")

#Ejercicio 4.9
men <- as.numeric(movies$castMenAmount)
women <-as.numeric(movies$castWomenAmount)
aa <- data.frame(movies$revenue, movies$voteAvg, men, women)
mnn <- data.frame(head(aa[order(-aa$movies.revenue),],50))
options(scipen = 999)
plot( mnn$movies.revenue,mnn$women,xlab = "cantidad de actrices",ylab = "ingresos", type = "p", col="blue")



a <- data.frame(movies$revenue, movies$releaseDate)
byMonth <- data.frame(a[order(a$movies.releaseDate),])
month <- as.numeric(substring(byMonth$movies.releaseDate,6,7))
byMonth$month <- month
byMonth$movies.releaseDate <- NULL

byy <- data.frame(table(byMonth$month))

