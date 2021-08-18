# Import CSV as data frame
d.class=read.csv("class.csv",header = TRUE,stringsAsFactors = FALSE)

# Set Col "name" and "age" to variable
name=d.class[,"name"]
age=d.class[,"age"]

# Values of 3rd,5th,7th element in "age"
print(age[c(3,5,7)])

# Values of "age" larger than 15
print(which(age>15)) # Function which()

# Mary and James's age (without reference data included)
agenamed=setNames(age[c(6,13)],name[c(6,13)])
print(agenamed[c("Mary","James")])

