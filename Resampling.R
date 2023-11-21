

##bootstraping in R

x=read.csv("grades1.csv")

s=sample(x$MT, 10, replace = T)

#popMean
mean(x$MT)

mean(s)
sd(s)
#Generate bootstrap sample

bs=replicate(10000, mean(sample(s, 10, replace = T)))
mean(bs)
sd(bs)
hist(bs)


###Jackknife re-sampling

sj=sample(x$MT, 10, replace = T)

mjack=c()

for(i in 1:1000){
  mjack[i]=mean(sj[-i])
}

mean(mjack)
sd(mjack)
hist(mjack)
