getwd()


#PACOTES
pacman::p_load(corrplot, dplyr, ggplot2)

#BASE DE DADOS 
library(readxl)
pnad = read_excel("E:/Machine Learning_CP/corr_var_num/pnad2014_30a50.xlsx")


#TABELA DE CORRELAÇÃO
cor(pnad)

#GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS
pairs(pnad)

# CORRPLOT DAS VARIÁVEIS #
pnad <- cor(pnad) # Tabela de correlações
corrplot(pnad, method = "number", order = 'alphabet')
corrplot(pnad, order = 'alphabet') 
corrplot(pnad, method = "square", order = 'AOE')
