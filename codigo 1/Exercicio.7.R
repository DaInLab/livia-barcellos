# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)
exercicio6 <- read_excel("dados/exercicio7.xls")
View(exercicio7)

#importar e vizualizar os dados
exercicio7 <- read_excel("dados/exercicio7.xls", skip = 1, col_names = c("Areas", "Atendimentos") , col_types = c("text" ,"numeric"))
View(exercicio7)

#Construir um gráfico de barras
exercicio7[[1]] <- data.frame(exercicio7)
data.frame(exercicio7)
v.exercicio7 <- c(data.frame(exercicio7)$Atendimentos)
barplot(v.exercicio7)