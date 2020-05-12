"Data types in R: There are 6 data type in R language:
1) Number/Double
2) Integer
3) Character
4) Logical
5) Complex
6) Raw"

a <- 12.3334
b <- "Shani Kumar Gupta"
c <- 12L
d <- TRUE
e <- 5.3+4i

print(a)
print(b)
print(c)
print(d)
print(e)
cat(a)
class(a)
class(b)
class(c)
class(d)
class(e)

"Main Data Types in R are:"
"
1) Vectors
2) Lists
3) Matrices
4) Arrays
5) Factors
6) DataFrames"

# Create a Vector

vec <- c("red","green","blue",2)
print(vec)
print(class(vec))
class(vec)

# Create a List

lt <- list(c(2,5,3), 21.5, "shani")
print(lt)
print(class(lt))

# Create a Matrices
M <- matrix(c('a','a','b','c','d','e'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)
print(class(M))

# Create an Array
arr <- array(c('green','red'), dim = c(3,3,2))
print(arr)
class(arr)

# Create a factor
