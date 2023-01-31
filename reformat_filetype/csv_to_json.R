library(jsonlite)
library(dplyr)

data <- read_csv("data.csv")

data_json <- toJSON(data)

data_json
