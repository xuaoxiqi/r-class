#Programming Assignment 1
setwd("C:/Users/axu/Desktop")
getwd()
hw1_data <- read.csv("hw1_data.csv")

#Q1
names(hw1_data)
# A1:
# Ozone, Solar.R, Wind, Temp, Month, Day

#Q2
first2rows <- hw1_data[1:2,]
first2rows
# A2:
# Ozone Solar.R Wind Temp Month Day
# 1    41     190  7.4   67     5   1
# 2    36     118  8.0   72     5   2

#Q3
hw1_row <- nrow(hw1_data)
# A3: 153

#Q4
last2rows <- hw1_data[(hw1_row-1):hw1_row,]
last2rows
# A4:
#   Ozone Solar.R Wind Temp Month Day
# 152    18     131  8.0   76     9  29
# 153    20     223 11.5   68     9  30

#Q5
line47row <- hw1_data[47,]
line47row
# A5: 21

#Q6
myOzone <- hw1_data$Ozone
bad <- is.na(myOzone)
ans6 <- myOzone[!bad]
result6 <- hw1_row-length(ans6)
result6
# A6: 37

#Q7
mean(ans6)
# A7: 42.1

#Q8
goodQ8 <- complete.cases(hw1_data)
tmp8 <- hw1_data[goodQ8,][,]
final8 <- tmp8[(tmp8$Ozone>31) & (tmp8$Temp>90), ]
mean(final8$Solar.R)
# A8: 212.8

#Q9
goodQ9 <- complete.cases(hw1_data)
tmp9 <- hw1_data[goodQ9,][,]
final9 <- tmp9[tmp9$Month == 6, ]
mean(final9$Temp)
# A9: 79.1
#The answer should more likely to be 78.2 --xuaoxqiqi 

#Q10
goodQ10 <- complete.cases(hw1_data)
tmp10 <- hw1_data[goodQ10,][,]
final10 <- tmp10[tmp10$Month == 5, ]
max(final10$Ozone)
# A10: 115

