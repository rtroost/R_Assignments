z <- rexp(100000, 1/10)

dat = NULL
for(i in 1:100){
  dat=c(dat, mean(sample(z,30)) )
}

hist(dat, labels = T)

print(paste("Mean: ",mean(dat)))
print(paste("SD:",sd(dat)))