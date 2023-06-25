
# Removing heteroscedascity from count data
par(mfrow=c(1,2))
v <- voom(dge, design, plot=TRUE)
v

vfit <- lmFit(v, design)
vfit <- contrasts.fit(vfit, contrasts=contr.matrix)
efit <- eBayes(vfit)
plotSA(efit, main="Final model: Mean-variance trend")
vfit
par(mfrow=c(1,1))
