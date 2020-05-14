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


# Lets do some Matrix operations

matrix(1:12, byrow = FALSE, nrow = 4)
matrix(1:12, byrow = TRUE, nrow = 4)

a <- matrix(1:30, byrow = FALSE, nrow = 5)
print(a)

a[2,3]
a[2,]
a[,3]
a[1:3,4]

a[1:3,2:5]

# binding of matrix
b <- 31:35
cbind(a,b)

