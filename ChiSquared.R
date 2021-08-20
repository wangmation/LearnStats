# Input data
data=matrix(c(30,45,20,65),nrow=2,ncol=2)

# Naming data
rownames(data)=c("M","F")
colnames(data)=c("Like","Dislike")

# Graphing
mosaicplot(data) # Mosaic plot
assocplot(data) # Association plot

# Chi-squared test
print(chisq.test(data))

# Fisher test
print(fisher.test(data))
