dupBirthday <- function(x) {
  x <- numeric(x)
  for (n in 1:50)      {
    q <- (1 - (0:(n - 1))/365)
    x[n] <- 1 - prod(q)	  
  }
  return(x)
}

p <- dupBirthday(50)
plot(p)               # Makes Figure 1
print(p)              # Makes prinout below