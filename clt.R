##CLT simulation 
#Xbar will have normal distribution as n gets larger

x=read.csv('grades1.csv')
plot(density(x$MT))
mean(x$MT)
sd(x$MT)

nSim=10000    #number of repetition

n=100    #sample size 
m1=c()
for (i in 1:nSim) {
  s=sample(x$MT, n, replace = T)
  m1[i]=mean(s)
  
}

hist(m1, 
     xlim=c(40,100))
abline(v=mean(x$MT), col='red', lty=3, lwd=3)

#par(mfrow=c(3,2))
#
#dev.off()
