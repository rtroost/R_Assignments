normalDistribution <- function(x, mean = 0, sd = 1){
  y = dnorm(x, mean, sd)
  plot(x, y, type="l", lwd=2, col="red")
  abline(v=mean(x), col=4) # Average-line
  x = seq(0,mean, length=100)
  y = dnorm(x, mean=mean, sd=sd)
  polygon(c(0,x,mean),c(0,y,0), col="green")
}

x <- seq(0, 10, length=100)

normalDistribution(x, mean = 5, sd = 2)