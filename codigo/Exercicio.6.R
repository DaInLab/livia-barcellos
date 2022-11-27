# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)
exercicio6 <- read_excel("dados/exercicio6.xls")
View(exercicio6)

#importar e vizualizar os dados
exercicio6 <- read_excel("dados/exercicio6.xls", skip = 1, col_names = c("Qualidade", "N.pessoas") , col_types = c("text" ,"numeric"))

View(exercicio6)

#Instalando o pacote
install.packages("qcc") 
#Carregando o pacote para uso das funções.
library(qcc) 

#Gráfico de Pareto
library(qcc)

Par_causas_ex6 <- (exercicio6$N.pessoas)
names(Par_causas_ex6) <- exercicio6$Qualidade 
G_Par_Causas_ex6 <- pareto.chart(Par_causas_ex6)
