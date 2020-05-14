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
lets.switch("p")

# For loop

for(i in 1:10)
{
  print(i)
}

df <- data.frame(CO2)
print(df)
for(i in df$Plant){
  print(i)
}

print(1:10)
print(df$Type)

# While loop

x <- 1
while(x <= 5){
  print(x)
  x <- x + 1
}

# Loop control statement

# Next Statement
for(i in 1:10){
  if(i==3){
    next
  }
  print(i)
}

# Break Statement
for(j in 1:10){
  if(j==5){
    break
  }
  print(j)
}