# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)
exercicio4 <- read_excel("dados/exercicio4.xls")
View(exercicio4)

#importar e vizualizar os dados
exercicio4 <- read_excel("dados/exercicio4.xls", skip = 1, col_names = "salarios", col_types = c("numeric"))
View(exercicio4)

#Construir uma tabela de frequências
tabela <- c(exercicio4$salarios)
tabfreq <- table (tabela)
tabfreq  
#5.25  5.73  6.26  6.66  6.86  7.39  7.44  7.59  8.12  8.46  8.74 
#1     1     1     1     1     1     1     1     1     1     1 
#8.95  9.13  9.35  9.77   9.8 10.53 10.76 11.06 11.59 
#1     1     1     1     1     1     1     1     1 


#Opção 1:
#salva a tabela em Tab
Tab = table(exercicio4$salarios) 

#soma os valores da tabela
Total = sum(Tab) 
#20L

#frequência absoluta dividido pelo total é igual à frequência relativa
Tab/Total 
# 5.25  5.73  6.26  6.66  6.86  7.39  7.44  7.59  8.12  8.46  8.74 
#0.05  0.05  0.05  0.05  0.05  0.05  0.05  0.05  0.05  0.05  0.05 
#8.95  9.13  9.35  9.77   9.8 10.53 10.76 11.06 11.59 
#0.05  0.05  0.05  0.05  0.05  0.05  0.05  0.05  0.05 

barplot(tabfreq)
print(exercicio4.table)

# transformando os dados em vetor
exercicio4[[1]] <- data.frame(exercicio4)
class (exercicio4)
data.frame(exercicio4)
v.exercicio4 <- c(data.frame(exercicio4)$salarios)

print (exercicio4)
print (data.frame(exercicio4))

# criando e imprimindo gráfico de histograma 
exercicio4.table <-table(v.exercicio4) 

# imprimindo a tabela de frequência
print (exercicio4.table)


