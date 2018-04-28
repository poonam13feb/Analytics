# Decision Tree
# Finiding how people take discison
#creating decision Tree

library(rpart) # fOR Decision trees cart
library(rpart.plot) # For Drawing plots for DT
library(RColorBrewer) # enhancing colors plots

# students : Gender - ( male & female) buy prodcuts 

variable= Gender
set.seed(100)
gender = sample (x=c('male','female'),size = 100,replace = T,prob =c(0.5,0.5) ) 
table(gender)              

#variable - Buy: Decision
set.seed(3000)
buy= sample(x=c('buy','notbuy'), size=1000, replace = T, prob = c(.49,.51))
table (buy)
prop.table(table(buy))
# create Data frame
students1 = data.frame(gender,buy)
head(students1)
t1=table(students1$gender,students1$buy)
addmargins(t1)
dtree1 =rpart(buy~gender,data = students1,minsplit=4, minbucket=2)
library(rpart.plot)
rpart.plot(dtree1, main='classification tree', nn=t, type=4, extra=105)
dtree1
predict(dtree1, newdata = data.frame(gender='female'), type = c('class'))
set.seed(5000)
married =sample(x=c('married','single'), size = 1000, replace = T, prob =c(0.5,0.5))
table(married)
students2= data.frame(gender,married,buy)
prop.table(ftable(students2))
table(students2$buy)
dtree2= rpart(buy~gender+married,data = students2)
dtree2
rpart.plot(dtree2)
predict(dtree2,newdata = data.frame(gender='female', married= 'single'), type='class')







