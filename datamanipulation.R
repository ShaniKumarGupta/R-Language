library(dplyr)

db <- read.csv("diamonds.csv")

View(db)
names(db)

summary(db)
head(db)

# filter from the datasets
head(filter(db, carat>0.2, cut == "Premium"))
