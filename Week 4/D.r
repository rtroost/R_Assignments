metro <- function(rate, intervalMin, intervalMax){
  return(pexp(intervalMin:intervalMax, rate));
}

round(metro(1/5, 4, 10) * 100, 2)