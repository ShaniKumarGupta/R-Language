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

# Create a column and add in databse which is function of other parameters
df <- mutate(db, Volume_of_diamond = x*y*z)
View(df)

# suppose you want to see only the new datasets added to datasets
head(transmute(db, Volume_of_diamond = x*y*z))

# finding out mean or sum of particular column
summarise(df, volume_avg = mean(Volume_of_diamond))

# I want to know the different types of cut in db dataset
distinct(select(db,cut))

# distinct variables of color
distinct(select(db, color))

# giving a random sample taken from the database
sample_n(db, 10)

# get a random sample of fraction of dataset
sample_frac(db, 0.01)

# Adding data to existind table of dataset
db <- tail(add_row(db, x = 53941, carat=0.25, cut="Premium", color="F", clarity="vs2", depth=63.2,table=62.4,price=3757,x=5.2,y=3.7,z=4.5))
