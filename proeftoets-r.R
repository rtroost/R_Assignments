Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

Mode(c(5,5,6,6,1))

# 6) 
attach(heart.rate)

# a) Geef een samenvatting van de hartfrequentiemetingen (bereik, gemiddelde, mediaan, 1e en 3e kwartiel).
summary(heart.rate$hr)
quantile(heart.rate$hr, c(.32, .57, .98))

# b) Maak een histogram van alle hartfrequentiemetingen.
hist(hr)

# c) Maak boxplots van de hartfrequentiemetingen op 0, 30, 60 en 120 minuten na enalaprilat.
boxplot(heart.rate[heart.rate$time==0, "hr"], heart.rate[heart.rate$time==30 "hr"])
boxplot(heart.rate[heart.rate$time==60 "hr"], heart.rate[heart.rate$time==120 "hr"])

# 7) 
# a) Wat is het gemiddelde en de standaardafwijking van de hartfrequenties gemeten voor enalaprilat? 
mean(hr[time==0])
sd(hr[time==0])


# b) Wat is de z-waarde van de hartfrequentiemeting van patient 7 op t=0 ?
(hr[subj == 7 & time == 0] - mean(hr[time == 0]))/sd(hr[time == 0])

# 8) 
# b) Wat is de standaardfout in de gemeten gemiddelde hartfrequentie op t=0? 
Formule in R voor SE = SD/Sqrt(n)

# c) Bereken het 95% betrouwbaarheidsinterval? 
t.test(hr[time==0])

# 9) 
# a) Zijn de gemiddelden voor en 60 minuten na enalaprilat verschillend (gebruik een t-test voor ongepaarde metingen)? Wat is het significantieniveau? Wat betekent dit?
t.test(hr[time == 0], hr[time == 60])

# b) Bij a) heb je twee steekproefgemiddelden vergeleken. Is er een betere manier om met dezelfde gegevens te bepalen of enalaprilat na 60 minuten effect heeft op de hartfrequentie? Welke? Toon  dit aan met een statistische toets. Eerst naar de individuele verschillen kijken en bekijken of deze uitkomsten significant zijn.
t.test(hr[time == 0], hr[time == 60], paired=TRUE)
t.test(hr[time == 0] - hr[time == 60])


attach(airquality)

# a) Wat is de correlatie tussen ozon concentratie en temperatuur? En tussen ozon concentratie en windsnelheid? Wat betekent dit?
cor(Ozone,Temp)

# Als bij het bovenstaande antwoord de uitkomst "NA" is, missen er waarnemingen in 1 of beide kolommen, gebruik complete:
cor(Ozone,Temp, use="complete")
cor(Ozone,Wind, use="complete")

# b) Bepaal het verband tussen ozon concentratie en temperatuur mbv lineaire regressie. Is dit verband significant? Waarom? Wat betekent dit? 
summary(lm(Ozone ~ Temp))