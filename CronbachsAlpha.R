# Load Package
library(ltm)

# Using sample data here
data <- data.frame(Q1=c(1, 2, 2, 3, 2, 2, 3, 3, 2, 3),
                   Q2=c(1, 1, 1, 2, 3, 3, 2, 3, 3, 3),
                   Q3=c(1, 1, 2, 1, 2, 3, 3, 3, 2, 3))

# Calculate
print(cronbach.alpha(data,CI=TRUE))

# KMO Validation

# Load Package
library(psych)

# Calculate
KMO_result=KMO(data)
print(KMO_result)

