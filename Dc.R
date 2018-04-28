# Decision Tree
# Finiding how people take discison
#creating decision Tree

library(rpart) # fOR Decision trees cart
library(rpart.plot) # For Drawing plots for DT
library(RColorBrewer) # enhancing colors plots

# students : Gender - ( male & female) buy prodcuts 
# variable Gender
set.seed(100)
gender = sample(x=c('male','female'),size = 100,replace = T,prob = )