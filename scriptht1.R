library(dplyr)

# Ejercicio 4.10
movies <- read.csv("~/MoviesHt1/movies.csv")
pop <- data.frame(movies[order(-movies$voteAvg),])
pop2 <- data.frame(pop$director, pop$voteAvg)
head(pop2,20)


# Ejercicio 4.11
ing <- data.frame(movies[order(-movies$revenue),])
ing2 <- data.frame(movies[order(-movies$budget),])
bud <- data.frame(ing$budget, ing$revenue)
bud3 <- data.frame(ing2$budget, ing2$revenue)

bud2 <- data.frame(head(bud,50))
bud4 <- data.frame(head(bud3,50))

 
plot(x = bud2$ing.budget, y = bud2$ing.revenue)
plot(x = bud4$ing2.budget, y = bud4$ing2.revenue)

plot(x = movies$budget, y = movies$revenue)

# Ejercicio 4.12/13
a <- data.frame(movies$revenue, movies$releaseDate)
byMonth <- data.frame(a[order(a$movies.releaseDate),])
month <- as.numeric(substring(byMonth$movies.releaseDate,6,7))
byMonth$month <- month
byMonth$movies.releaseDate <- NULL

plot(x = byMonth$month, y = byMonth$movies.revenue)

mean(byMonth[byMonth$month == 1, 1])
mean(byMonth[byMonth$month == 2, 1])
mean(byMonth[byMonth$month == 3, 1])
mean(byMonth[byMonth$month == 4, 1])
mean(byMonth[byMonth$month == 5, 1])
mean(byMonth[byMonth$month == 6, 1])
mean(byMonth[byMonth$month == 7, 1])
mean(byMonth[byMonth$month == 8, 1])
mean(byMonth[byMonth$month == 9, 1])
mean(byMonth[byMonth$month == 10, 1])
mean(byMonth[byMonth$month == 11, 1])
mean(byMonth[byMonth$month == 12, 1])

#Ejercicio 4.13

sum(byMonth$month == 1)/12
sum(byMonth$month == 2)/12
sum(byMonth$month == 3)/12
sum(byMonth$month == 4)/12
sum(byMonth$month == 5)/12
sum(byMonth$month == 6)/12
sum(byMonth$month == 7)/12
sum(byMonth$month == 8)/12
sum(byMonth$month == 9)/12
sum(byMonth$month == 10)/12
sum(byMonth$month == 11)/12
sum(byMonth$month == 12)/12

#Ejercicio 4.14

plot(x = movies$voteAvg, y = movies$revenue)
plot(x = head((movies$voteAvg),20), y = head((movies$revenue),20))  





