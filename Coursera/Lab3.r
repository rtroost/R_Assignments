library(psych)
library(gclus)
library(rgl)

impact <- read.table("Stats1.13.HW.03.txt", header=T)

round(cor(impact$S1.pre, impact$S2.pre),2)
round(cor(impact$V1.pre, impact$V2.pre),2)

improvement <- (impact$V1.post - impact$V1.pre)
test1 <- cor(impact$V1.pre, improvement)

improvement <- (impact$V2.post - impact$V2.pre)
test2 <- cor(impact$V2.pre, improvement)

result <- (test1 + test2)/2
result

des <- subset(impact, impact[,2] == "des")
aer <- subset(impact, impact[,2] == "aer")

describeBy(impact$Sgain, impact$cond)


base <- impact[c(5,6,9,10)]
base.r <- abs(cor(base))
base.color <- dmat.color(base.r)
base.order <- order.single(base.r) 
cpairs(base, base.order, panel.colors = base.color, gap = .5,
       main = "Variables Ordered and Colored by Correlation")