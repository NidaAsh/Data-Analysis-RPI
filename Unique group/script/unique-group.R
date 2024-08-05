getwd()
setwd("C:/Users/nida1_qtoyw7b/Downloads/Second Semester/Research Design/Data for the project/measurement data img/data cleaning code/data")

occur <- read.csv(file = "asia.occ.data.csv", header = T, sep = ",")

emma.size <- read.csv(file = "asia.cenozoic.m1.csv", header = T, sep = ",")

gema.size <- read.csv(file = "collected.global.mesozoic.measurement.data.new.col.csv", header = T, sep = ",")

pbdb.size <- read.csv(file = "global.pbdb.size.m1.csv", header = T, sep = ",")







install.packages("dplyr")
library(dplyr)

#######separated order and accepted name from rest of the data
occur %>% distinct(order, accepted_name)

#####created a data frame for order and accepted name
df <- data.frame(occur %>% distinct(order, accepted_name))
