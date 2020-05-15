# Let's learn few advanced graph which we generally use in data analysis

library(ggplot2)
View(mpg)

plot <- ggplot(mpg, aes(x = factor(cyl), y = displ, fill = factor(cyl)))

# Let's make a box plot
plot + geom_boxplot()

# violin plot

plot + geom_violin()

# Next up corrplots
library(corrplot)
corrplot(cor(mtcars))
corrplot(cor(mtcars), method = 'square')
corrplot(cor(mtcars), method = 'number', type = 'upper')

library(corrgram)
corrgram(cor(mtcars))
