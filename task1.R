
#load the Dataset

data=read.csv(url("http://bit.ly/w-data"))
print(data)

#summarize the data

summary(data)

#create relationship models

relation<-lm(Scores~Hours,data)
print(relation)

#summary of the relationship

summary(relation)

#predict the data for given value

relation<-lm(Scores~Hours,data)
a=data.frame(Hours=9.25)
result=predict(relation,a)
print(result)

#visuallising regression graphically
#plot the chart
plot(data,pch=10,col="blue",main="student_scores",cex=1,xlab="Hours in hr/day",ylab="Scores")
abline(relation)

