myVar = function(x) {
  total = 0
  xbar = mean(x)
  
  for(i in 1:length(x)){
    total = total + ((x[i]-xbar)^2)
  }
  
  return((1/(length(x)-1)) * total)
}

myCov <- function(x,y = NULL) {
  total = 0
  xbar = mean(x)
  ybar = mean(y)
  
  for(i in 1:length(x)) {
    total = total + ((x[i] - xbar) * (y[i] - ybar))
  }
  
  return((1/(length(x)-1)) * total)
}

myCor <- function(x,y = NULL) {
  result = cov(x,y) / (sd(x)*sd(y));
  return(result)
}

vector1 = seq(1,10, 1) # c(1,2,3,4,5,6,7,8,9,10)
vector2 = seq(1,5.5, .5) # c(1,1.5,2,2.5,3,3.5,4,4.5,5,5.5)

var(vector1) # 9.166667
myVar(vector1) # 9.166667

cov(vector1, vector2) # 4.583333
myCov(vector1, vector2) # 4.583333

cor(vector1, vector2) # 1
myCor(vector1, vector2) # 1