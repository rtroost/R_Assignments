library(ggplot2)

GNIdata <- read.csv("UNdata_GNI_per_capita_20130129_110114578.csv", header = T, sep=',')
LEdata <- read.csv("UNdata_Life_Expectancy_20130129_105420893.csv", header = T, sep=',')

GNIdata = GNIdata[which(GNIdata$Year == 2010), ]
LEdata = LEdata[which(LEdata$Year == 2010), ]

plotData <- merge(GNIdata, LEdata, by = intersect("Country.or.Area","Country.or.Area"), incomparables = NA)

print(qplot(plotData$Value.x, plotData$Value.y, xlab="GNI", ylab="Life Expectancy", main = 'GNI vs levensverwachting van het jaar 2010'))