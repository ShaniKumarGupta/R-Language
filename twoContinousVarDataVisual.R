# let's plot some 2 variables graph
# we will use mtcar dataset

library(ggplot2)
View(mtcars)

plot <- ggplot(mtcars, aes(wt, mpg, label=rownames(mtcars)))

# Let's start with plotting a test graph
plot + geom_text()

# Let's plot a label graph
plot + geom_label()

# classify based on cylinders
plot + geom_label(aes(color = cyl))
