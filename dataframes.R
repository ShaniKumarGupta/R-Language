# Data Frames

# List of data frames present in R by default
data()

# how to view a particular dataset ?
View(CO2)
View(mtcars)

# Lets create our own data frames now

students <- c("Shani","Aman","Vivek","Ritika","Ravi","Lado","Priya")
weight <- c("60","65","55","60","45","50","52")
Gender <- c("M","M","M","F","M","M","M")

# lets craete dataframes using these values

df <- data.frame(students,weight,Gender)
View(df)

# Number of row and columns present in dataset
nrow(df)
ncol(df)

# what is dimension of data frame
dim(df)

# summary of data sets
summary(df)

# reading only few of the top elements 
head(df)

# reading few of the bottom data
tail(df)

# what is the structure of the data frames
str(df)

# How to access particular data set from the table?
df$students

# Accesssing particular data from the table
df[5,1]

# to access particular column
df[,3]
df[,1]

# to access particular row
df[5,]

# to access whole data except particular column
df[,-3]

# data frame for just particular set of data
df[2:4,]

df[,1:2]

# Similar to df$students
df[["students"]]

# calling particular columns using columns names
df[,c("students","weight")]

# using Drop commands
df[,1,drop= FALSE]
df[,3,drop=TRUE]

df

# lets work with subset functions
subset(df,subset = Gender == "M")
weight.ordered <- order(df["weight"])
df[weight.ordered,]
