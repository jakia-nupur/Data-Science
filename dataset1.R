setwd("~/project/datasets/") 
data_1 <- read.csv("~/project/datasets/Dataset_1.csv")
print(data_1)

nrow(data_1)
ncol(data_1)
dim(data_1)
length(data_1)

names(data_1)

str(data_1)

mode <- function (a){
  b <- unique(a)
  tab <- tabulate (match(a,b)) 
  b[tab == max (tab)]
}

loan_mean = mean (data_1$Loan)
loan_median = median (data_1$Loan)
loan_mode = mode (data_1$Loan)
print(loan_mean)
print(loan_median)
print(loan_mode)


interest_rate_mean = mean (data_1$Interest_rate)
interest_rate_median = median (data_1$Interest_rate)
interest_rate_mode = mode (data_1$Interest_rate)
print(interest_rate_mean)
print(interest_rate_median)
print(interest_rate_mode)

loan_range = range (data_1$Loan)
loan_sd = sd (data_1$Loan)
print(loan_range)
print(loan_sd)

interest_rate_range = range (data_1$Interest_rate)
interest_rate_sd = sd (data_1$Interest_rate)
print(interest_rate_range)
print(interest_rate_sd)

credit_score_mode = mode (data_1$Credit_Score)
print(credit_score_mode)


  