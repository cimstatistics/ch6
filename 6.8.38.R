Methuselah data, bootstrap confidence band, Example 6.2.
ssfit <- smooth.spline(time,m,df=20)
resid <- m-ssfit$y
shapiro.test(e)
sd(e)
library(KernSmooth)
LQ1 <- locpoly(time,m,degree=3,bandwidth=15,drv=1)
tq <- LQ1$x
L <- length(tq)
mq <- LQ1$y
plot(tq,mq,"l",xlim=c(1510,1840),ylim=c(-0.04,0.015))
### bootstrap confidence
B <- 100
YYD <- matrix(nr=372,nc=B)
FYD <- matrix(L,nc=B)
SD <- matrix(L,nc=B)
for(b in 1:B){
YY[,b] <- ssfit$y+rnorm(372,0,sd(e))
FYD[,b] <- locpoly(time,YY[,b],degree=3,bandwidth=15,drv=1)$y}
for( i in L){
SD[i,] <- sort(FYD[i,])}
ssfit.1 <- smooth.spline(tq,SD[,0.025*B],df=20)
ssfit.2 <- smooth.spline(tq,SD[,0.925*B],df=20)
lines(tq,ssfit.1$y)
lines(tq,ssfit.2$y)
