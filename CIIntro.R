##CI construction 

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

qnorm(0.025)

#95%CI=[phat-1.96*SQRT(p1/n), phat+1.96*SQRT(p1/n)]


qnorm(0.05)

#95%CI=[phat-1.64*SQRT(p1/n), phat+1.64*SQRT(p1/n)]

