library(tidyverse)



datos <- read.csv("Taller1_Feb_13\\Solucion\\android-games.csv") %>%
    filter(total_ratings < 4121627, category == "GAME ACTION") %>%
    select(total_ratings, five_star_rating)
print(head(datos))

par(bg = "black")
plot(datos$total_ratings, datos$five_star_rating,
    xlab = "rating", ylab = "5 estrellas", pch = 20,
    col = "white", col.main = "white", col.axis = "white", col.lab = "white",
    fg = "white")


mod <- lm(five_star_rating ~ total_ratings, data = datos)
print(summary(mod)) 