kansdichtheid <- function(x, mean = 0, sd = 1){
  output <- (1/(sd*sqrt(2*pi))*exp(-((x-mean)^2)/(2*sd^2)))
  return(output)
}

w<-rnorm(10,10,3)
linea = dnorm(w,7,3)
lineb = kansdichtheid(w,7,3)

plot(x = linea, type = 'n')
lines(linea, type="b", col="red")
lines(lineb, type="b", col="blue")