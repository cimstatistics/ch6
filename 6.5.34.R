### Base spline, natural spline
x <- rbeta(100,0.3,0.5)
xs <- sort(x)
m <- sin(xs*10)+sin(xs*20)+(2*xs-1)^2 ### regression function
y <- m+rnorm(100,0,0.5)
plot(xs,y,"p") ### (xs,y) simulated data
library(splines)
B <- bs(xs,knots=c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9))
Mb <- lm(y~B)
plot(xs,y,"p")
lines(xs,fitted(Mb),lwd=3,lty=2)
N <- ns(xs,knots=c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9))
Mn <- lm(y~N)
lines(xs,fitted(Mn),lwd=3,lty=2)
