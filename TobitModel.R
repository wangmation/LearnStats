# Tobit Model method from hoxo_m

data=function(x){
  x[x>100]=100
  x[x<0]=0 # 0-100
  x
}

set.seed(123) # Random number

Math=data(rnorm(100,mean=50,sd=20))
Arith=data(Math+40+rnorm(100,mean=0,sd=10))

plot(Arith~Math)

model=lm(Arith~Math) # Fit linear models
abline(model)

summary(model)

# Parameter estimation by External Package
library(VGAM) # Declaration

plot(Arith~Math)

model=lm(Arith~Math) # Fit linear models
abline(model)

tobit.model=vglm(Arith~Math,tobit(Lower=0,Upper=100),trace=FALSE)
abline(coef(tobit.model)[c(1,3)],lwd=2)

summary(tobit.model)
