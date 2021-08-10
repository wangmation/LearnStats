# Read example data then do Descriptive Statistics with "stargazer"

# Read external CSV into R Dataset
library(readr)
example=read.csv("exampledata.csv")

# Show initial 6 Cols
head(example)

# Show function names
names(example)

# Show numbers of variable and observations
dim(example)

# Summarize
summary(example)

# Do Descrpitive Statistics below.

# Load package
library(stargazer)

# Use package
stargazer(as.data.frame(example),type="html") # Generate in HTML code
