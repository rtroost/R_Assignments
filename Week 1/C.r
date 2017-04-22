opdrachtC <- function(x){
  tossStats <- 1:x
  for(i in 1:x) {
    tossStats[i] <- sample(1:6, 1, TRUE) + sample(1:6, 1, TRUE)
  }
  tossStats <- table(tossStats)
  return(tossStats)
}

barplot(opdrachtC(1000))