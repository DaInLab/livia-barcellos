# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 3
dataframe.exercicio3 <- read_excel("./dados/exercicio3.xls",skip = 1, col_names = c("numerofilhos", "familias"), col_types = c("numeric"))

# Transformando o conjunto de dados em vetor
v.exercicio3 <- c(dataframe.exercicio3 $numerofilhos)

# Criando uma fução para a moda. 
getmode <- function(v.exercicio3) 
  {
  unico.v.exercicio3 <- unique(v.exercicio3)
  unico.v.exercicio3[which.max(tabulate(match(v.exercicio3, unico.v.exercicio3)))]
  }

# calculando a mediana
exercicio3.mediana = median(dataframe.exercicio3$numerofilhos)
print(paste("Médiana do número de filhos:", exercicio3.mediana))

# calculando a moda usando a funcao criada
moda <- getmode(v.exercicio3)
print(moda)
