### Load packages 
#NOTE: you may need to install!
library(readr)

#set working directory
setwd("/courses/STA145/leonham1")

# Load the data 
data <- read_csv("data.csv")

## create descriptive statistics table using table command
summary(data)

## Create Continguency table for political_party and gender
table(data$political_party, data$gender)

#analyze with chi-square test and p-value
chisq.test(table(data$political_party, data$gender))
