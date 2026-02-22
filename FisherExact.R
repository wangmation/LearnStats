# Create Example Data
data=matrix(c(88,14,102,10,10,20,98,24,122),nrow=3,byrow=TRUE)
rownames(data)=c("OK","NO","Total")
colnames(data)=c("Rent","Not Rent","Total")

# Fisher's Exact Test for data
result=fisher.test(data) # When freq<5 exists,or Chi-Squared
print(result)
