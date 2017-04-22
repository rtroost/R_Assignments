opdrachtB <- function(x){
  tableStats <- table(sample(1:6, size = x, replace = TRUE))
  percentages <- cbind(round(prop.table(tableStats)*100,2))
  return(percentages)
}

print(opdrachtB(10000))