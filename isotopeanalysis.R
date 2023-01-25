#SIBER analysis
#read spreadsheet to dataframe, then to SIBER format
preyItems <- read.csv("Downloads/preyitems.csv")
siberPrey <- createSiberObject(preyItems)
plotSiberObject(siberPrey, hulls = FALSE, ellipses = FALSE, group.hulls = FALSE, bty = "L", iso.order = c(2,1), xlab = expression({delta}^13*C~'\u2030'), ylab = expression({delta}^15*N~'\u2030'), points.order = c(16))
plotGroupEllipses(siberPrey, p.interval = 0.95, iso.order = c(2,1), lty = 2)
legend(-20, -5, legend = c("Animal", "Plant", "Turtle"), col = c(1:3), lty = 2)
title(main = "Isotopic Niches of Turtles and Prey Types")

#More specific groups: invert, vert, monocot, dicot, misc, painted
plotSiberObject(siberPreySpec, hulls = FALSE, ellipses = FALSE, group.hulls = FALSE, bty = "L", iso.order = c(2,1), xlab = expression({delta}^13*C~'\u2030'), ylab = expression({delta}^15*N~'\u2030'), points.order = c(16))
plotGroupEllipses(siberPreySpec, p.interval = 0.95, iso.order = c(2,1), lty = 2)
legend(-40, -5, legend = c("Vertebrates", "Invertebrates", "Basal Plants", "Monocots", "Dicots", "Turtles"), col = c(1:6), lty = 2)
title(main = "Isotopic Niches of Turtles and Prey Items")

#Analyze turtles by category
plotSiberObject(siberTurt, hulls = FALSE, ellipses = FALSE, group.hulls = TRUE, iso.order = c(1,2), xlab = expression({delta}^13*C~'\u2030'), ylab = expression({delta}^15*N~'\u2030'), points.order = c(16))
plotGroupEllipses(siberTurt, p.interval = 0.4, iso.order = c(1,2), lty = 2)
