# dplyr consists of different cases which  provide individual functionality
#Summarize Case, Group Case, Manipulate Case, Manipulate Variable

df <- data.frame(CO2)
print(df)

names(df)

# Data Manipulation with dplyr Package
install.packages('dplyr')

# call dplyr package to use in the case
library(dplyr)

# call the dataset of diamonds

db <- read.csv("diamonds.csv")

# view the dataset
View(db)
names(db)
