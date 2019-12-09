### Old Faithful, density estimation, Example 6.1.
library(MASS)
data(faithful)
attach(faithful)
kde2 <- kde2d(eruptions,waiting,n=64)
persp(kde2$x,kde2$y,kde2$z, col=gray(0.8), theta=30, phi=30,
xlab="eruptions", ylab="waiting", zlab="density)
contour(kde2$x,kde2$y,kde2$z, xlab="eruptions", ylab="waiting")
