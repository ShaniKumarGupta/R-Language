# Perform conditional and loop task with datasets

#lets start with if condition

check <- 1
if(check == 1){
  print("Hello")
}else{
  print("Hi")
}

# ifelse conditions

check <- 2
ifelse(check==0,"True","False")

# Power of ifelse

testval <- c(1,0,1,0,0,1)
ifelse(testval == 1,"True","False")

ifelse(testval == 0, 3*testval, 5*testval)

# Switch cases

lets.switch <- function(x)
{
  switch (x, "a"="Alpha", "b"="Beta", "o"="Omega", "t"="Theta", "Out of Bounds"
  )
}

lets.switch("a")
lets.switch("t")
lets.switch("")
