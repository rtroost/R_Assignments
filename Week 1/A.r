opdracht <- function(x){
  tableStats <- table(sample(c('heads', 'tails'), size = x, replace = TRUE))
  percentages <- cbind(tableStats,round(prop.table(tableStats)*100,2))
  colnames(percentages) <- c('Count','Percentage')
  return(percentages)
}

print(opdracht(10000)[,'Percentage'])