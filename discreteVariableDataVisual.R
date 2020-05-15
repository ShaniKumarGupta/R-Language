# Let's learn how to deal with categorical data or discrete data in x axis

library(ggplot2)

# lets plot bar graph

db <- read.csv("diamonds.csv")

plot <- ggplot(db, aes(x = clarity))

plot + geom_bar()

# count of different clarity of diamonds based on cut
plot + geom_bar(aes(fill = cut))

# Let's add border to the colors for better understanding
plot + geom_bar(aes(fill = cut), color = "Black")

# how to distinguish color in terms of persentage
plot + geom_bar(aes(fill = cut), color = "Black", position = "fill")

plot + geom_bar(aes(fill = cut), color = "Black", position = position_fill(reverse = TRUE))

# other ways to find the values of color in each clarity category

plot + geom_bar(aes(fill = cut), color = "Black", position = "dodge")

plot + geom_bar(aes(fill = cut), color = "Black", position = "stack")

plot + geom_bar(aes(color = color), fill = NA, position = "identity")


# Part 2

# let's create more discrete graph with one variable
# to understand how to use position, coordinates, labels

plot <- ggplot(db, aes(cut))

plot + geom_bar()

# fill the graph with clarity

plot + geom_bar(aes(fill = clarity))

# lets revise how to use position
plot <- ggplot(db, aes(cut, fill = clarity))
plot + geom_bar(position = "dodge")
plot + geom_bar(position = "fill")
plot + geom_bar(position = "identity")
plot + geom_bar(position = "stack")

# Learn to deal with coordinates
# flipping the coordinates

plot + geom_bar() + coord_flip()

# polar coordinates
plot + geom_bar() + coord_polar()

# labels

plot + geom_bar(position = "stack") + ggtitle("Cut Classification based on Clarity")

# adding x and y labels
plot + geom_bar(position = "stack") + ggtitle("Cut Classification based on Clarity") + xlab("cut") + ylab("count")

# adding all of them in a single command
plot + geom_bar(position = "stack") + labs(title = "Cut Classification", x = "cut", y="count")

# lets create some factes
plot + geom_bar(position = "dodge") + facet_grid(.~cut)

plot + geom_bar(position = "dodge") + facet_wrap(~cut)
