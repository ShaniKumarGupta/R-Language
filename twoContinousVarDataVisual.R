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

# lets see the overlapping points also
plot + geom_point(aes(size = factor(cyl), alpha = 0.5))

# lets changing the shape of the markers
plot + geom_point(aes(shape = factor(cyl)))

plot + geom_point(aes(shape = factor(cyl), size = 3))

# Let's do some simple regression
plot + geom_smooth() + geom_point()

plot + geom_smooth(method = 'lm') + geom_point()

# Quantile Graph
library(quantreg)
plot + geom_quantile() + geom_point()
