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

# factor
factor(mtcars$cyl)
factor(mtcars$hp)
nrow(mtcars)

plot + geom_label(aes(color = factor(cyl)))

# Learn about point and jitter plots

plot + geom_point(aes(color = factor(cyl)))

# classify based on size for cylinder
plot + geom_point(aes(size = factor(cyl)))
