read.csv(github.com/TuQmano/MetodosCiPol/raw/master/docs/Clase05/datos/muestra.csv)
read_file_raw(github.com/TuQmano/MetodosCiPol/raw/master/docs/Clase05/datos/muestra.csv)
library(tidyverse)

muestra2 <-
muestra %>%
  separate(dire, into = c("calle", "dto", "prov"), sep= ",") 

muestra2 %>%
  mutate("numero" =
           str_extract(string = "calle", pattern = "[:digit:]") )


#ahora paso al ejercicio de purrr y unión de múltiples .csv

files2<- dir(pattern = "*.csv", path="/Users/hannu/Desktop/practicas_R/00.PRESIDENCIAL", full.names = T)
view("docs")

#no sé por qué esto no se me convierte en un objeto con la lista de csv. Igual ahora voy a probar con un solo .csv que importo, pasarlo de wide a long
#El data frame original tiene como variable a las listas y cada observación es la cantidad de votos. Eso quiere decir que la base es wide. Para hacerla long pivotea llevando las columnas correspondientes a las listas a una variable "lista" y los votos asociados a una variable "voto"

gral2019_long <- arg_presi_gral2019 %>%
  pivot_longer(cols = c(`00024`, `00036`, `00037`, `00039`, `00050`, `00108`), names_to = "listas", values_to =  "votos")
