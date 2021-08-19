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

<<<<<<< HEAD
# Create a Table
table=data.frame(
  Prefecture=c("Hokkaido","Tokyo","Osaka","Fukuoka"),
  "0-14"=c("608","1518","1093","676"),
  "15-64"=c("3191","8734","5342","2278"),
  "65+"=c("1558","3006","2278","1305")
)
print(table)

# Accumulative Bar Plot
barplot(as.matrix(table),legend=TRUE)

# Histogram
hist.expdata=rnorm(30,mean=100,sd=1) # Normal Distribution, Standard Deviations=1
hist(hist.expdata)

dst=density(hist.expdata) # Kernel Density Estimation
lines(dst,lwd=1) # Line Width controlled by argument "lwd"

# Curve (Examples)
curve(1-3*x-x^2,-4,2) # 1-3x-x^2 from -4 to 2
curve(sin,-2*pi,2*pi)

# Multiple Curves (Example)
x=seq(0,2*pi,length=200)
y1=sin(x)
y2=cos(x)
matplot(x,cbind(y1,y2),type='l',lwd=2) # cbind combines y1 and y2
abline(h=0) # Add Line to plot with abline()

=======
# Create Mosaic Plot
data2=matrix(c(3,6,7,4),nrow=2,ncol=2,byrow=TRUE)
dimnames(data2)=list("Sex"=c("Female","Male"),"Prefer"=c("Like","Dislike"))
mosaicplot(data2)
>>>>>>> 7e1004865bf1c6dc5cfdc2d27a020242bceec9f4
