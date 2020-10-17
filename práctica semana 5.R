read.csv(github.com/TuQmano/MetodosCiPol/raw/master/docs/Clase05/datos/muestra.csv)
read_file_raw(github.com/TuQmano/MetodosCiPol/raw/master/docs/Clase05/datos/muestra.csv)
library(tidyverse)

muestra2 <- muestra %>%
  separate(dire, into = c("calle", "dto", "prov"), sep= ",") 

muestra2 %>%
  mutate("numero" =
           str_extract("calle", regex(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)) )
  