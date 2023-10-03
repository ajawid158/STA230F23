##Z and t distributions comparison simulation

#n=100, xbar=20, sigma=4 CI 95
#wirte a function that calculates CI
x=seq(-6,6, by=0.01)
y1=dt(x, df=5)
y2=dt(x, df=15)
y3=dt(x, df=30)
y4=dt(x, df=99)

yz=dnorm(x)

plot(x, yz, typ="l")
lines(x,y1, col="red")
lines(x,y2, col="blue")
lines(x,y3, col="darkgreen")
lines(x,y4, col="#FF1666")

#Examples z-test
#qnorm((1-p)/2)
qnorm(0.03)

##Examples 
xbar=25
s=8
n=10
qt(0.05, df=n-1, lower.tail = TRUE)   ##this gives the Pr(t<value)=0.975


#95%CI=[xbar-2.26*s/sqrt(10), xbar-2.26*s/sqrt(10)]


qnorm(0.05)
qt(0.05, df=300, lower.tail = TRUE)

