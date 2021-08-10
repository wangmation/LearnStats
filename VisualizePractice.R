# Input data
data=c(13,60,81,75,65,65,64,48,58,49,60,87,65,78,45,61,60,59,44,24,9,14,30,96,40,45,53,70,21)

# Histogram
hist(data)
hist(data,breaks=seq(0,100,10)) # Separate with breaks() to 10, 0-100
hist(data,breaks=seq(0,25,50,75,100)) # Separate as 0-25-50-75-100
hist(data,breaks=seq(0,31,50,100))

hist(data,main="Test Scores",xlab="Scores",ylab=NULL) # Set title and axis title(xlab,ylab)
hist(data,freq=F) # Display in probability density

# Stem
stem(data)

# Box plot
boxplot(data)

# Basic data process
print(mean(data)) # Mean;Average
print(median(data)) # Median

freq=sort(data)
print(table(data)) # Ascending sorted

var(data) # Variant
sd(data) # Standard Differences 

quantile(data) # Quantile

sd(data)/mean(data) # SD/AVG
sd(data)
