library(dplyr)

db <- read.csv("diamonds.csv")

View(db)
names(db)

summary(db)
head(db)

# filter from the datasets
head(filter(db, carat>0.2, cut == "Premium"))
head(filter(db, carat>0.2, color == "E", price>500))

# suppose we want a particular set of data to be seprated
df <- slice(db, 20:45)
print(df)

# Arrange the dataset based on priority of certain parameter
head(arrange(db, carat, depth, table))

# renaming particular row for appropriate name
df <- rename(db, Purity = clarity)
View(df)
