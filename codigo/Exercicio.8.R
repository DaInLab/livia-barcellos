# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)
exercicio8 <- read_excel("dados/exercicio8.xls")
View(exercicio8)

#importar e vizualizar os dados
exercicio8 <- read_excel("dados/exercicio8.xls", skip = 1, col_names = "altura", col_types = c("numeric"))
View(exercicio8)

#Construir uma tabela de frequências
tabela <- c(exercicio8$altura)
tabfreq <- table (tabela)
tabfreq  
#1.56 1.57 1.58  1.6 1.61 1.62 1.63 1.64 1.65 1.66 1.67 1.68 1.69  1.7 1.71 1.72 1.73 1.74 1.75 1.76 
#1    1    2    1    2    2    3    4    2    4    4    5    1    4    2    3    4    4    7    3 
#1.77 1.78 1.79  1.8 1.81 1.82 1.83 1.86 1.87 1.89 
#3    1    5    3    1    2    2    1    1    1 

barplot(tabfreq)
print(exercicio8.table)

# transformando os dados em vetor
exercicio8[[1]] <- data.frame(exercicio8)
class (exercicio8)
data.frame(exercicio8)
v.exercicio8 <- c(data.frame(exercicio8)$altura)

print (exercicio8)
print (data.frame(exercicio8))

# criando e imprimindo gráfico de histograma 
exercicio8.table <-table(v.exercicio8) 

# imprimindo a tabela de frequência
print (exercicio8.table)
hist(v.exercicio8$altura)
hist(v.exercicio8$altura, breaks = 30, col = "blue", xlab = "Alturas")
hist(v.exercicio8$altura, breaks = 30, col = "blue", xlab = "Alturas", ylab = "Frequência", main = " Histograma de altura")

#Construir uma tabela de frequências
tabela <- c(exercicio8)
tabfreq <- table (tabela)
tabfreq  


# criando e imprimindo gráfico de histograma 
exercicio8.table <-table(exercicio8) 
View(exercicio8.table)

