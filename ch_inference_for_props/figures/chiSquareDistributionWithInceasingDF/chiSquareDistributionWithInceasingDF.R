library(openintro)
data(COL)

myPDF('chiSquareDistributionWithInceasingDF.pdf', 5.6, 2.8,
      mar = c(2, 0.5, 0.25, 0.5),
      mgp = c(2.1, 0.7, 0))
x <- c(0, seq(0.0000001, 40, 0.05))
DF <- c(2.0000001, 4, 9)
y <- list()
for (i in 1:length(DF)) {
  y[[i]] <- dchisq(x, DF[i])
}
plot(0, 0,
     type = 'n',
     xlim = c(0, 25),
     yaxs="i",
     ylim = range(c(y, recursive = TRUE)),
     axes = FALSE)
for (i in 1:length(DF)) {
  lines(x, y[[i]],
        lty = i,
        col = COL[ifelse(i == 3, 4, i)],
        lwd = 1.5 + i / 2)
}
abline(h = 0)
axis(1)
legend('topright',
       lwd = 0.3 + 1:4 / 1.25,
       col = COL[c(1, 2, 4)],
       lty = 1:4,
       legend = paste(round(DF)),
       title = 'Degrees of Freedom',
       cex = 1)
dev.off()
