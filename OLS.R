# OLS Sample
# Reference: https://at-noda.com/econwiki/index.php?R%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6%E8%A8%88%E9%87%8F%E7%B5%8C%E6%B8%88%E5%88%86%E6%9E%90#x0baa89f

# Import dataset to i
i=read.table("https://at-noda.com/econwiki/index.php?plugin=attach&refer=R%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6%E8%A8%88%E9%87%8F%E7%B5%8C%E6%B8%88%E5%88%86%E6%9E%90&openfile=inv.csv",header=TRUE,sep=",")

# use attach(dataset) to search in dataset by name

# Growth rate Function
q.growth=function(x){
  n=length(x)
  x1=x[-(1:4)]
  x4=x[-((n-3):n)]
  z1=(x1-x4)/x4*100
  z1
}

# INV growth rate in value
I=q.growth(INV)

# GDE growth rate in value
Y=q.growth(GDE)

# Length adjustment of Row3(R:Long-term Prime Lending Rate)
r=R[5:length(R)]

# Applying Simple Regression formula I=a+bY,I=a+br
# I=a+bY
print(lm(I~Y)) # Fitting linear models, I-Y

# I=a+bY without constant
print(lm(I~0+Y))

# Summarize
print(summary(lm(I~Y)))
print(summary(lm(I~r)))

# Complex regression with 2 variables
print(summary(lm(I~Y+r)))

# Prediction
print(predict(lm(I~Y+r)))
print(lm(I~Y+r),interval="confidence",level=0.95) # Confidence interval in 95%

# Graphing
graph=predict(lm(I~Y))
plot(Y,graph)
