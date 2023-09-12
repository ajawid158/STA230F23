#Random variables Simulation

##Population
tips=read.csv('tips.csv')
View(tips)
names(tips)
#Select A variable 
 #total_bill 
    #population distribution
mean(tips$total_bill)
hist(tips$total_bill)
abline(v=mean(tips$total_bill), 
       col='red')

#select a sample
s1=sample(tips$total_bill, 40, replace = T)
mean(s1)
hist(s1)
abline(v=mean(s1), col='blue')


#m is a random variable



##Lets run a LOOP to repeat the sampling 1000 times
m=c()


for (i in 1:10) {
  s=sample(tips$total_bill, 40, replace = T)
  m[i]=mean(s)
}

head(m)
length(m)
hist(m)
mean(m)


#this is the sampling distribution of the mean.




