# Homework 2
library(tidyverse)  # load the tidyverse package
DATA = read_csv("data/hw1_data.csv")
hist(DATA$var1)
boxplot(DATA$var1)
install.packages("moments")
library(moments)


mode_function <- function(x) {
  unique_x <- unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}

multiple_mode_function <- function(x) {
  unique_x <- unique(x)
  tabulated <- tabulate(match(x, unique_x))
  unique_x[tabulated == max(tabulated)]
}

mean(DATA$var1)
median(DATA$var1)
multiple_mode_function(DATA$var1)
summary(DATA$var1)
sd(DATA$var1)
kurt_value <- kurtosis(DATA$var1)
print(kurt_value)

# K-Means for funsies
k <- 2
km <- kmeans(DATA$var1, centers=k)
print(km)




hist(DATA$var2)
boxplot(DATA$var2)
