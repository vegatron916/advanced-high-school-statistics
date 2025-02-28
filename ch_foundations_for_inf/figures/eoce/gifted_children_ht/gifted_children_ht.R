# load packages -----------------------------------------------------
library(openintro)

# load data ---------------------------------------------------------
data(gifted)

# plot mom's IQ -----------------------------------------------------
pdf("gifted_children_ht_momIQ_hist.pdf", height = 3, width = 6)
par(mar=c(3.7,2.2,0.5,0.5), las=1, mgp=c(2.5,0.7,0), cex.lab = 1.5)
histPlot(gifted$motheriq, col = COL[1], 
         xlab = "Mother's IQ", ylab = "", axes = FALSE, yaxs="i")
axis(1)
axis(2, at = c(0,4,8,12))
dev.off()