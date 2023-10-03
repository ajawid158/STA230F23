##CI construction 

z=rnorm(10000000)
plot(density(z))

#for 90% CI
quantile(z, 0.05)

#for 95% CI
quantile(z, 0.025)


#for 99% CI
quantile(z, 0.005)


