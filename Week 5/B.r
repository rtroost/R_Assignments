eenFunctie <- function(a, b) {
  return(a * x + b)
}

x <- 1:25
y <- eenFunctie(2,3)

x <- rnorm(x, 0, 1)
y <- rnorm(y, 0, 1)
plot(x, y, col="red")
points(cor(x,y), col="black")
abline(lm(x ~ y))

x <- rnorm(x, 0, 2)
y <- rnorm(y, 0, 2)
points(x, y, col="blue")
points(cor(x,y), col="black")

x <- rnorm(x, 0, 5)
y <- rnorm(y, 0, 5)
points(x, y, col="green")
points(cor(x,y), col="black")