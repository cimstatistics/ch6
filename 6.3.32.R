### Methuselah data, local regression, Example 6.2.
library(KernSmooth)
plot(time,m,xlab="year",ylab="annual increment width (mm)" )
lines(locpoly(time,m,degree=2,bandwidth=10))
locpoly(time,m,degree=3,bandwidth=15,drv=1)
