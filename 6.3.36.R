### Methuselah, wavelet, Example 6.2.
library(waveslim)
### take only 64 years 1555-1618, J=6
mm <- m[60:123]
W <- dwt(mm,n.levels=2)
plot(1:32,W$d1, ylim=c(-0.5,5),"h")
lines(1:16+0.2,W$d2,"h")
lines(1:16+0.4,W$s2,"h")
### wavelet thresholding for the transforms
W.sure <- sure.thresh(W,max.level=2,hard=TRUE)
plot(1:32,W.sure$d1, ylim=c(-0.5,5),"h")
points(1:16+0.2,W.sure$d2,"h")
lines(1:16+0.4,W.sure$s2,"h")
### comparison smoothing with sure and with out
plot(time[60:123],mm,"p",xlab="",ylab="")
WA <- mra(mm,J=3)
lines(time[60:123],WA$S3)
WA.sure <- sure.thresh(WA,max.level=2,hard=TRUE)
lines(time[60:123],W1A.sure$S3)
