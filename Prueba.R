# La base de datos Sample - Superstore.xls contiene detalles de las ordenes de los compradores de una cadena de supermercados en Estados Unidos. 
# Esta incluye estado, región, fecha de orden, fecha de despacho, etc.
# Realice un análisis exploratorio simple de las variables category, sub-category y discount.

library(readxl)
library(tidyverse)
library(ggplot2)

db <- read_excel("Sample - Superstore.xls", sheet = "Orders")
db_analis <- db |> 
  select("Category", "Sub-Category", "Discount")
summary(db_analis)

print(table(db_analis$Category))
ggplot(db_analis) +
 aes(x = Category) +
 geom_bar(fill = "#440154") +
 theme_minimal()

print(table(db_analis$`Sub-Category`))
print(table(db_analis$Discount))