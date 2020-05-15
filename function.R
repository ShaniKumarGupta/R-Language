# User defind function

# Let's create a simple user defind function

say.hello <- function(){
  print("hello")
}

say.hello()

# User defind function with one parameter

say.bye <- function(x){
  print(sprintf("Hello %s", x))
}

say.bye("Shani")

# User defind function with two parameter

sum <- function(x,y){
  print(x+y)
}

sum(12,23)

# Do call function list

math.it <- function(x, func = mean){
  do.call(func, args = list(x))
}

math.it(1:10)
math.it(1:10,sd)
