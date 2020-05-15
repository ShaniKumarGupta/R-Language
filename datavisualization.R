# import library
library(dplyr)
library(ggplot2)

db <- read.csv("diamonds.csv")
db <- sample_frac(db,0.1)

# Observe dataset
View(db)

# let's start with calling ggplot function
# continues variables

plot <- ggplot(db, aes(x = price))

# # Plotting of grapth
# Histogram

plot + geom_histogram(binwidth = 600, aes(fill=cut))


# lets try to classify price of diamonds with clarity
plot + geom_histogram(binwidth = 600, aes(fill=clarity))

# add border to the classification
plot + geom_histogram(binwidth = 600, aes(fill=cut), color = "Black")
