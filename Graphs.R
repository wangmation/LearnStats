# Input data
data1=c(24.2,100.3,126.4,86.5,68.2,16,113.3,189.9,132.0,279.3)

# Basic Pie Chart & Bar Chart
pie(data1)
barplot(data1)

# Formatted Pie Chart & Bar Chart
barplot(data1,horiz=T) # Make horizontal

# Create labels for each bar
label=c("Japan","China","USA","UK","Italy","Netherlands","Germany","France","Russia","Australia")
barplot(data1,xlab="Fertilization Supply",ylab="Rate%",main="World Fertilization Supply",names.arg = label)
# names.arg = Labels

# Create Mosaic Plot
data2=matrix(c(3,6,7,4),nrow=2,ncol=2,byrow=TRUE)
dimnames(data2)=list("Sex"=c("Female","Male"),"Prefer"=c("Like","Dislike"))
mosaicplot(data2)