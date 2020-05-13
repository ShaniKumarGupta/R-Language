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
