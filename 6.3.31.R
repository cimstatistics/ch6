### Old Faithful, local regression, Example 6.1.
library(MASS)
library(KernSmooth)
data(faithful)
attach(faithful)
plot(eruptions,waiting)
lines(locpoly(eruptions,waiting,degree=1,bandwidth=0.5))
lines(locpoly(eruptions,waiting,degree=3,bandwidth=0.5))
