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
col <- sapply(db, is.numeric)
cor.data <- cor(db[,col])
corrplot(cor.data, method = 'square', type = 'upper')
corrplot(cor.data, method = 'number', type = 'upper')

# Lets create boxplot region wise
box <- ggplot(db, aes(x=Region, y=Happiness.Score, color = Region))
box + geom_boxplot() + geom_jitter(aes(color = Country), size=1.0) + ggtitle("Happiness score for Regions and Countries") + coord_flip() + theme(legend.position = "none")

# box plot for continent

ggplot(db, aes(x = continent, y= Happiness.Score, color= continent)) + geom_boxplot() + ggtitle("Happiness Score for continent")

# Regression for all continent
ggplot(db, aes(x = Health..Life.Expectancy. , y = Happiness.Score)) + geom_point(aes(color = continent), size=3, alpha=0.8) + geom_smooth(aes(color = continent, fill = continent),method = 'lm', fullrange = T) + facet_wrap(~continent) + theme_bw() + ggtitle("Scatter plot for Life Expectancy")

# For Economy
ggplot(db, aes(x = Economy..GDP.per.Capita. , y = Happiness.Score)) + geom_point(aes(color = continent), size=3, alpha=0.8) + geom_smooth(aes(color = continent, fill = continent),method = 'lm', fullrange = T) + facet_wrap(~continent) + theme_bw() + ggtitle("Scatter plot for Life Expectancy")

# for freedom

ggplot(db, aes(x = Freedom , y = Happiness.Score)) + geom_point(aes(color = continent), size=3, alpha=0.8) + geom_smooth(aes(color = continent, fill = continent),method = 'lm', fullrange = T) + facet_wrap(~continent) + theme_bw() + ggtitle("Scatter plot for Life Expectancy")

# for Family
ggplot(db, aes(x = Family , y = Happiness.Score)) + geom_point(aes(color = continent), size=3, alpha=0.8) + geom_smooth(aes(color = continent, fill = continent),method = 'lm', fullrange = T) + facet_wrap(~continent) + theme_bw() + ggtitle("Scatter plot for Life Expectancy")

# for Trust in Government
ggplot(db, aes(x = Trust..Government.Corruption. , y = Happiness.Score)) + geom_point(aes(color = continent), size=3, alpha=0.8) + geom_smooth(aes(color = continent, fill = continent),method = 'lm', fullrange = T) + facet_wrap(~continent) + theme_bw() + ggtitle("Scatter plot for Life Expectancy")

# plots were for the whole continent
# plot for the most unhappiest places, noticed in box plot

box + geom_boxplot() + geom_jitter(aes(color = Country), size=1.0) + ggtitle("Happiness score for Regions and Countries") + coord_flip() + theme(legend.position = "none")

# Sub saharan Africa is the most unhappiest region
# classify all of the data based on happiest neutral and less happy region

db$happinessmeter <- NA
db$happinessmeter[which(db$Region %in% c("Australia and New Zealand","Western Europe","America"))] <- "Happiest"

db$happinessmeter[which(db$Region %in% c("Sub-Saharan Africa"))] <- "Least Happiest"

db$happinessmeter[which(db$Region %in% c("Southern Asia","Southeastern Asia","Middle East and Northern Africa", "Latin America and Caribbean","Eastern Asia","Central and Eastern Europe"))] <- "Nuetral"

View(db)


