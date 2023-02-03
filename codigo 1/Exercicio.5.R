# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)
exercicio5 <- read_excel("dados/exercicio5.xls")
View(exercicio5)

#importar e vizualizar os dados
exercicio5 <- read_excel("dados/exercicio5.xls", skip = 1, col_names = c("marcas", "pessoas") , col_types = c("text" ,"numeric"))

View(exercicio5)

#Construir um gráfico de barras
exercicio5[[1]] <- data.frame(exercicio5)
data.frame(exercicio5)
v.exercicio5 <- c(data.frame(exercicio5)$pessoas)
barplot(v.exercicio5)

