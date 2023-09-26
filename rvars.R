#Random variables Simulation

##Population
tips=read.csv('tips.csv')
View(tips)
dim(tips)
names(tips)
#Select A variable 
  #total Bill

#select a sample
s1=sample(tips$total_bill, 40, replace = T)

##Lets run a LOOP to repeat the sampling 1000 times
m=c()   #empty vector


for (i in 1:1000) {
  s=sample(tips$total_bill, 40, replace = T)
  m[i]=mean(s)
}
m

head(m)
length(m)
hist(m)
mean(m)


#this is the sampling distribution of the mean.




