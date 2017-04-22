library(psych)
library(sm)

impact <- read.table("stats1-datafiles-Stats1.13.Lab.02.txt", header=T)

dim(impact) # Dimensions
nrow(impact) # Rows 
ncol(impact) # Columns

class(impact)
names(impact)

impact$subject <- factor(impact$subject) # Omdat een bepaalde persoon niet groter of kleiner is dan een ander, dus hoeft niet nummeriek te zijn

describe(impact)

control <- subset(impact, impact[, 2]=="control")