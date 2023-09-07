library(tidyverse)
setwd("C:\\BrianKim\\Code\\R")

# Read in dataset
DATA = read_csv("Data/EPID_521_lab_data.csv", na = "NA")
# Question 1
DATA = rename(DATA, Race = RIDRETH1)

DATA$Race = ordered(DATA$Race, levels = c("Black", "White", "MexicanAmerican", "OtherHispanic", "Other"))


# Question 2
length(table(DATA$Race))
prop.table(table(DATA$Race))



