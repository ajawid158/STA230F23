##CI construction for pop mean 

z=rnorm(10000000)
plot(density(z))

#for 90% CI
quantile(z, 0.05)

#for 95% CI
quantile(z, 0.025)


#for 99% CI
quantile(z, 0.005)


##CI for population proportion 
#mean=p, sd=sqrt(pq/n)

qnorm(0.05)

#95%CI=[phat-1.96*SQRT(p1/n), phat+1.96*SQRT(p1/n)]


qnorm(0.05)

#95%CI=[phat-1.64*SQRT(p1/n), phat+1.64*SQRT(p1/n)]


#chi square distribution 
#df=n-1

x1=rchisq(10000
         , df=2)

#plot(density(x1))

x2=rchisq(10000
          , df=4)
x3=rchisq(10000
          , df=6)

x4=rchisq(10000
          , df=10)

x5=rchisq(10000
          , df=30)
x6=rchisq(10000
          , df=50)


plot(density(x1), 
     xlim=c(0, 80))
lines(density(x2), col="red")
lines(density(x3), col="green")
lines(density(x4), col="blue")
lines(density(x5), col="black")
lines(density(x6), col="#FF33FF")


##calculating quantiles

qchisq(0.025, df=8)
qchisq(0.975, df=8)
quantile()

###CI for Pop Variance
n=10    #sample size  
df=9    #df 
Sv=7    #sample variance s square

#construct p%=90% CI for pop variance
a=qchisq(0.05, df=df)
b=qchisq(0.95, df=df)

#CI=[(n-1)*Sv/b   ,  (n-1)*Sv/b]
LB=df*Sv/b
UB=df*Sv/a
LB
UB


#90%CI=[4, 19]

###Upload the dataset grades 
g=read.csv("grades1.csv")
names(g)

#work with Final score which is a QNT var
#pop. Variance
var(g$Fscore)  # suppose we donot know this

#select a random sample
s=sample(g$Fscore, 30, replace = T)
head(s)

var(s)
#construction 95 CI for population variance
n=30
df=n-1
Sv=var(s)     #S square


a=qchisq(0.025, df=n-1)
b=qchisq(0.975, df=n-1)

#CI=[(n-1)*Sv/b   ,  (n-1)*Sv/b]

LB=df*Sv/b
UB=df*Sv/a
LB
UB

#CI for pop SD

lb=sqrt(LB)
ub=sqrt(UB)
lb
ub


###Summary
#CI for pop mean 
#CI for pop prop
#CI for pop var
#CI for Pop sD


