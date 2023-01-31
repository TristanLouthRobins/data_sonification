library(jsonlite)
library(tidyverse)

data <- read_csv("subset.csv")
data

data_json <- data %>% 
  rownames_to_column(var = 'index') %>% 
  select(index, artist, album, track) %>% 
  head(5) %>% 
  nest(data = -index) %>% 
  { setNames(.$data, .$index) }

toJSON(lapply(data_json, unbox), pretty = TRUE)
