# 1. Importing Data
library(readxl)
mydata <- read_excel("C:/Users/anton/Downloads/Blockbusters.xlsx")
attach(mydata)

# Basic Table View
names(mydata)
head(mydata)
tail(mydata)

# Histogram PG-13
Blockbusters.PG13 <- Worldwide_Gross[1:30]
hist(Blockbusters.PG13)

# Histogram R
Blockbusters.R <- Worldwide_Gross[31:60]
hist(Blockbusters.R)

# Means
mean(Blockbusters.PG13)
mean(Blockbusters.R)

# Standard Deviations
sd(Blockbusters.PG13)
sd(Blockbusters.R)

# Medians
median(Blockbusters.PG13)
median(Blockbusters.R)

# Inter-Quartile Ranges (IQR)
IQR(Blockbusters.PG13)
IQR(Blockbusters.R)

# Boxplot for Comparison
boxplot(Blockbusters.PG13, Blockbusters.R, names= c("Pg-13","R"), main = "Box Office Totals")

qqnorm(Blockbusters.PG13, main = "PG-13 Q-Q Plot")

qqline(Blockbusters.PG13)

qqnorm(Blockbusters.R, main = "R Q-Q Plot")
qqline(Blockbusters.R)

# T-Test for Significance
t.test(Worldwide_Gross[1:30],Worldwide_Gross[31:60], conf.level = 0.95, alternative = "two.sided", var.equal = TRUE)``
