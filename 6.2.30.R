### Old Faithful, kernel regression, Example 6.1.
library(MASS)
data(faithful)
attach(faithful)
plot(eruptions,waiting,lwd=2)
lines(ksmooth(eruptions,waiting,kernel="normal", bandwidth=5),lwd=2)
lines(ksmooth(eruptions,waiting,kernel="normal"),lwd=2,lty=2)
