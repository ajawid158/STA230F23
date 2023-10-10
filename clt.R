##CLT simulation 
#Xbar will have normal distribution as n gets larger

x=read.csv('grades1.csv')
head(x)

plot(density(x$MT))
mean(x$MT)   #mu=85.7 true mean
sd(x$MT)    #sigma = 14.1  true sd

nSim=10000    #number of repetition

n=100    #sample size 
m1=c()

for (i in 1:nSim) {
  s=sample(x$MT, n, replace = T)
  m1[i]=mean(s)
  
}
length(m1)


hist(m1, 
     xlim=c(40,100))

abline(v=mean(x$MT), col='red', lty=3, lwd=3)

#par(mfrow=c(3,2))
#
#dev.off()

#CLT for Sample proportion

nSim=10000    #number of repetition

n=100    #sample size 
m1=c()

for (i in 1:nSim) {
  s=sample(x$Grade, n, replace = T)
  m1[i]=mean(s)
  
}
length(m1)


hist(m1)
abline(v=mean(x$Grade), col='red', lty=3, lwd=3)

prop.table(table(x$Grade))

