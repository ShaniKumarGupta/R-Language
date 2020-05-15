# World Happiness Data
library(dplyr)
# Data Manipulation for project
# Creating / Calling Dataset
db <- read.csv("2015.csv")
View(db)

# Let's consider data does not have any error
db <- db[,-5]

distinct(db,Region)

# let's create a new column countinent for classification
db$continent <- NA

# Australia
db$continent[which(db$Region %in% c("Australia and New Zealand"))] <- "Australia"

#North America
db$continent[which(db$Region %in% c("North America"))] <- "North America"

# Europe
db$continent[which(db$Region %in% c("Western Europe","Central and Eastern Europe"))] <- "Europe"

# Africa
db$continent[which(db$Region %in% c("Sub-Saharan Africa","Middle East and Northern Africa"))] <- "Africa"

# Asia
db$continent[which(db$Region %in% c("Eastern Asia","Southern Asia","Southeastern Asia"))] <- "Asia"
db$continent[which(db$Region %in% c("Latin America and Caribbean"))] <- "South America"

# Lets create an average of all the numerical data continent wise
hp <- aggregate(db[,4:11], list(db$continent), mean)
View(hp)


# Data Visualization for WHD

library(ggplot2)
library(corrplot)
library(corrgram)

# Lets start with basics
summary(db)
head(db,10)
tail(db,10)

# lets graph the maen data of all continent
ggplot(hp, aes(x = Group.1, y= Happiness.Score, fill = Group.1)) + geom_bar(stat = "identity") + ggtitle("Happiness score of each continent") + ylab("Happines Score") + xlab("Continent")

# Let's find out the correlation in variables

