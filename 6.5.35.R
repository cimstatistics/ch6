### Methuselah, smoothing spline, Example 6.2.
mm <- m[55:125] ### only Little Ice Age
plot(time[55:125],mm)
ssfit <- smooth.spline(time[55:125],mm,df=20)
xx <- seq(1550,1620,0.2)
lines(predict(ssfit,xx),lwd=2)
