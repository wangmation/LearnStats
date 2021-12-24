# An example of using SFA model with external package

# Load Package
library("sfa")

# Generates random number
set.seed(225)

# Data entry
daten=dgp(n=100,b=c(1,2),sc=1) # sc=1 for Production frontier model
test=sfa(y~x,data=daten)

# Extract model co-efficients
coef(test)

print(test)

# Model Prediction
predict(test)

# Extract Log-likelihood
logLik(test)

# Extract Model Residuals
residuals(test)

# Summarize
summary(test)

# Create efficiencies with generic function
eff(test)

# 31 Warnings with NaNs produced.