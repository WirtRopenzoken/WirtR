load("muestra27.RData")
dim(muestra27)
#295110      3
colnames(muestra27)
#"var1" "var2" "var3"
colnames(muestra27)=c("nif","nombre","genero")

library(tidyverse)
library(dplyr)

str_detect(muestra27$nif,pattern="[:digit:]{8}[:alpha:]{1}")
sum(str_detect(muestra27$nif,pattern="[:digit:]{8}[:alpha:]{1}"))

muestra27=muestra27[str_detect(muestra27$nif,pattern="[:digit:]{8}[:alpha:]{1}"),]
dim(muestra27)
#268062      3


muestra27$genero_imp=0
length(unique(muestra27$nombre))

unique(muestra27$genero)
sum(muestra27$genero=="E")
cambiogenero=muestra27[muestra27$genero=="E",]




sum(muestra27$nombre=="ELENA"&muestra27$genero=="M")


for(i in 1:dim(muestra27)[1]){
  if(sum(muestra27$nombre==muestra27$nombre[i]&muestra27$genero=="M")>sum(muestra27$nombre==muestra27$nombre[i]&muestra27$genero=="V")){
    muestra27$genero_imp[i]="M"
  } else {
    muestra27$genero_imp[i]="V"
  }
}










