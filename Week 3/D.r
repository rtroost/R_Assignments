dat <- read.table("AviationData.txt", sep="|", header = T, quote = "", comment.char = "", strip.white = T)

dat = dat[which(dat$Total.Fatal.Injuries > 0), ]

# Maak een histogram van het aantal dodelijke slachtoffers per ongeluk.
hist(table(dat$Total.Fatal.Injuries), labels=T, xlab="Totaal aantal dodelijk slachtoffer", main="histogram van het totaal aantal dodelijk slachtoffer")