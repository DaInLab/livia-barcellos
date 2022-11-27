# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

#importar e vizualizar os dados
exercicio2 <- read_excel("dados/exercicio2.xls", skip = 1, col_names = "casas", col_types = c("numeric"))
View(exercicio2)

#Construir uma tabela de frequências
tabela <- c(exercicio2$casas)
tabfreq <- table (tabela)
tabfreq  

#tabela
#2  3 10 13 14 15 16 18 20 21 22 23 24 25 26 27 29 30 32 36 42 44 
#2  1  1  1  1  2  2  2  1  1  2  1  1  2  1  1  2  1  1  1  1  1 
#45 46 48 52 58 59 61 65 66 68 75 78 80 89 90 92 97 
#2  1  1  1  1  1  3  1  2  1  1  1  1  1  1  1  1 


# Print frequency table
barplot(tabfreq)

# transformando os dados em vetor
exercicio2[[1]] <- data.frame(exercicio2)
class (exercicio2)
data.frame(exercicio2)
v.exercicio2 <- c(data.frame(exercicio2)$casas)

print (exercicio2)
print (data.frame(exercicio2))

# criando a tabela de frequência
exercicio2.table <-table(v.exercicio2) 

# imprimindo a tabela de frequência
print (exercicio2.table)

#Calcular as medidas de posição 
#média
media <- mean(v.exercicio2$casas)
print(paste("Média das Casas:", media))
# 40.42

#mediana
mediana <-median(v.exercicio2$casas)
print(paste("Médiana das Casas:", mediana))
#"Mediana das Casas": 31

# Calcular  as medidas de dispersão
range(exercicio2)
#[1] 2  97

#Amplitude
amplitude = max(exercicio2) - min(exercicio2)
print(paste("Amplitude:", amplitude))
#[1] Ämplitude: 95"

#Variância
variancia = round(var(exercicio2), 4)
print(paste("Variância:", variancia))
#[1] "Variância: 680.0037""

#Desvio padrão
desviopadrao = round(sd(v.exercicio2$casas),4)
print (paste("Desvio Padrão:", desviopadrao)) 
#[1]"Desvio Padrão: 26.0768"

#Coeficiente de variação
cv = round(100*desviopadrao/media,4)
print(paste("Coeficiente de Variação:",cv))
#"Coeficiente de Variação:64.5148"

quartiz = round(quantile(v.exercicio2$casas, prob=c(.25,.5,.75)),2)
quartiz
#25%  50%  75% 
#2.57 2.60 2.63 

round(summary(v.exercicio2$casas) ,2)
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#2.00   20.25   31.00   40.42   61.00   97.00 

#Gráfico
boxplot(exercicio2$casas)

abline(a = media, b = 0L, h = NULL, v = T)
abline(a = mediana, b = 0L, h = NULL, v = T)
abline(a = min(exercicio2), b = 0L, h = NULL, v = T)
abline(a = max(exercicio2), b = 0L, h = NULL, v = T)
abline(a = quartiz[1], b = 0L, h = NULL, v = T)
abline(a = quartiz[3], b = 0L, h = NULL, v = T)

#Outro gráfico
plot(exercicio2$casas, main = "Casas",
     xlab = "Casas",
     ylab = "Número de Casas")
barplot(table(exercicio2$casas))

plot(exercicio2$casas)
hist(exercicio2$casas)
lines(exercicio2$casas)

stripchart(exercicio2$casas, vertical = T)

