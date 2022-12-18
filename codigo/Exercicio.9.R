# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)
exercicio9 <- read_excel("dados/exercicio9.xls")
View(exercicio9)

# Importando o arquivo do exercício 9
df.exercicio9 <- read_excel("./dados/exercicio9.xls",skip = 1, col_names = "Salários", col_types = c("numeric"))
view (df.exercicio9)


# distribuição de frequência
# transformando os dados em vetor
exercicio9.em.vetor <- c(df.exercicio9$Salários)

# criando a tabela de frequência
exercicio9.tabela <-table(exercicio9.em.vetor)

# imprimindo a tabela de frequência
exercicio9.tabela
table(df.exercicio9)


# Histograma

hist(df.exercicio9$Salários)
hist(df.exercicio9$Salários, breaks = 7, col = "blue", xlab = "Salário dos funcionários")
hist(df.exercicio9$Salários, breaks = 7, col = "blue", xlab = "Salário dos funcionários", ylab = "Frequência", main = " Histograma de Salários")

#Construir uma tabela de frequências
tabela <- c(exercicio9)
tabfreq <- table (tabela)
tabfreq  


# criando e imprimindo gráfico de histograma 
exercicio9.table <-table(exercicio9) 
View(exercicio9.table)
#deu erro


