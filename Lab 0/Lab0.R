library(tidyverse)
# setwd("C:\\BrianKim\\Code\\R")
setwd("/Users/kimqi/Documents/Code/R/biostat521")
# Read in dataset
DATA = read_csv("Data/EPID_521_lab_data.csv", na = "NA")
# Question 1
DATA = rename(DATA, Race = RIDRETH1)

DATA$Race = ordered(DATA$Race, levels = c("Black", "White", "MexicanAmerican", "OtherHispanic", "Other"))


# Question 2
length(table(DATA$Race))
prop.table(table(DATA$Race))

# Question 3: BMI Summary Statistics
mean(DATA$BMXBMI, na.rm = TRUE)
sd(DATA$BMXBMI, na.rm = TRUE)
summary(DATA$BMXBMI)

# Question 6
hist(DATA$BMXBMI)

# Question 7
logAge = log(DATA$RIDAGEYR)
hist(DATA$RIDAGEYR)
hist(logAge)

# Question 9
DATA = mutate(DATA, Age65 = ifelse(RIDAGEYR >= 65, 1, 0))
table(DATA$Age65)
