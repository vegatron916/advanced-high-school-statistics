library(openintro)
data(COL)
data(births)
d <- births


myPDF('babySmokePlotOfTwoGroupsToExamineSkew.pdf', 4.5, 3.5,
      mfrow = 2:1,
      mar = c(3.5, 1, .1, 1),
      mgp = c(1.7, 0.55, 0))
xlab.start <- 'Newborn Weights (lbs) From Mothers Who'
histPlot(d$weight[d$smoke == 'smoker'],
         xlim = c(0, 11),
         axes = FALSE,
         yaxs="i",
         xlab = paste(xlab.start, 'Smoked'),
         col = COL[1])
axis(1)

par(mar = c(2.8, 1, 0.5, 1))
histPlot(d$weight[d$smoke == 'nonsmoker'],
         xlim = c(0, 11),
         axes = FALSE,
         yaxs="i",
         xlab = paste(xlab.start, 'Did Not Smoke'),
         col = COL[1])
axis(1)
dev.off()