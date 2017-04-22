dat <- read.csv("UNdata_GNI_per_capita_20130129_110114578.csv", header = T, sep=',')

# print(dat[dat$Country.or.Area=="South Africa"])

nldata = dat[which(dat$Country.or.Area == 'South Africa'), ]
plot(nldata$Year, nldata$Value, type = "l", xlab="Year", ylab="Gross National Income p.p.")