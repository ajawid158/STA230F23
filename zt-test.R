##Z and t distributions comparison simulation

#n=100, xbar=20, sigma=4 CI 95
#wirte a function that calculates CI
x=seq(-6,6, by=0.01)
y1=dt(x, df=5)
y2=dt(x, df=15)
y3=dt(x, df=30)

yz=dnorm(x)

plot(x, yz, typ="l")
lines(x,y1, col="red")
lines(x,y2, col="blue")
lines(x,y3, col="darkgreen")




