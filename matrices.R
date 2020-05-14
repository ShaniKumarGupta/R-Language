# Perform matrix opeartion 

# Lets create a simple vector
1:10
2.3:11

# create vector
c <- 1:10
b <- 5:14

matrix(c)

v <- c('a','b','c','d','e','f')
mat <- matrix(v,nrow = 2,ncol = 3, byrow = TRUE)
print(mat)

# lets learn about nrow and ncol

c<-matrix(c, nrow = 5)
matrix(c, ncol = 2)

nrow(c)
print(c)

# Lets name the rows and col

colnames(c) <- c("first","second")
print(c)

rownames(c) <- c("Row 1","Row 2","Row 3","Row 4","Row 5")
print(c)
