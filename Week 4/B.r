mydnorm <- function(x, mean = 0, sd = 1){
  output = NULL
  
  for(i in x){
    output = c(output, ( 1/( sqrt(2*pi) * sd ) ) * exp(1)^-( (i-mean)^2 / (2*sd^2) )  )
  }
  
  return(output)
}


w<-rnorm(10,10,3)
dnormData <- dnorm(w,7,3)
mydnormData <- mydnorm(w,7,3)



# hist(plotdata, xlab = "Total symptom score", main = "")
plot(dnormData, xlab = "Total sympton score", main = "")
# plot(density(mydnormData), xlab = "Total sympton score", main = "")

abline(lm(dnormData ~ dnormData), col = "green")