### Ridge, Lasso
### the example
x <- rbeta(50,1,1)
xs <- sort(x)
f1 <- xs^2-4*(xs-0.5)^3-0.5*xs^4-cos(4*xs)
y <- f1+rnorm(10,0,0.09)
### the global quadratic approximation
xx1 <- xx-mean(xx)
xx2 <- xx^2-mean(xx^2)
ff <- xx^2-4*(xx-0.5)^3-0.5*xx^4-cos(4*xx)
M <- lm(ff~xx1+xx2)
### lse
xs1 <- xs-mean(xs)
xs2 <- xs^2-mean(xs^2)
LSE <- lm(y~xs1+xs2)
### ridge
library(MASS)
RIDGE <- lm.ridge(y~xs1+xs2,lambda=seq(0,6,0.1))
### lasso
library(lars)
XX <- matrix(c(rep(1,50),xs1,xs2),ncol=3)
LASSO <- lars(XX,y,type="lasso",intercept=FALSE)
