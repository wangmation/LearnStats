# Using package RSM
library(rsm)

# Example Data
data <- data.frame(X1 = c(-1, 1, -1, 1, 0, 0, 0),X2 = c(-1, -1, 1, 1, 0, 0, 0), Y = c(72, 60, 54, 68, 62, 66, 64)
)

# Utilize model(Y～X1,X2)
model=rsm(Y~SO(X1,X2),data=data)
# Summarize
summary(model)

# Graph
contour(model,~X1+X2) # 2D
persp(model,~X1+X2) # 3D

