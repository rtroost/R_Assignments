z <- rnorm(100000, 10, 3)

# Geef de R code om 100 steekproeven van grootte 30 te nemen uit de populatie z
dat = NULL
for(i in 1:100){
  dat=c(dat, mean(sample(z,30)) )
}

# Maak een histogram van x
hist(dat, labels = T)

# Bepaal het gemiddelde xbar en de standaardafwijking se (standard error) van deze verzameling gemiddelden.
print(paste("Mean: ",mean(dat)))
print(paste("SD:",sd(dat)))

# Hoe vaak (dwz bij hoeveel vd 100 steekproeven) komt het voor dat het populatiegemiddelde mu (dus mean(z)) in de range x[i] +/- 2*se ligt?
subset <- dat[dat > 10] # NOG NIET AF