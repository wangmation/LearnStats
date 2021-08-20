# Input data
c1=c(41,46,54,51,68,37,44,51,37,56,41)
c2=c(52,52,54,73,56,64,49,57,41)
c3=c(48,59,69,71,49,65,61,44,51,59)

# Summarize
print(summary(c1))
print(summary(c2))
print(summary(c3))

# Graphing
# Scatter Dot plot
stripchart(list(c1,c2,c3),vertical=TRUE,method = "jitter") # vertical=TRUE,jitter-ed points
# Box plot
boxplot(c1,c2,c3)
# Additional Dot plot (add=TRUE)
stripchart(list(c1,c2,c3),vertical = TRUE,pch=16,add=TRUE)

# Bartlett
print(bartlett.test(list(c1,c2,c3)))

# Additional of Variation Analysis using aov()
a=c(c1,c2,c3)
b=c(rep('1',11),rep('2',9),rep('3',10))  # Replicate the value by rep()
c=factor(b)
df=data.frame(a,c)

an1=aov(a~c,df)

# Additional of Variation Analysis using oneway.test()
oneway.test(a~c,var.equal = TRUE) # using single F test
