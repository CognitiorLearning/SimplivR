#Simple Linear Regression
#Import the dataset
dataset = read.csv('Salary_Data.csv')

install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Salary, SplitRatio = 2/3)
split
training_set = subset(dataset, split==T)
testing_set = subset(dataset, split==F)

regressor = lm(formula = Salary ~ YearsExperience, 
               data=training_set)
print(regressor)
summary(regressor)



#Multiple Linear Regression 

dataset = read.csv('50_Startups.csv')

dataset$State = factor(dataset$State, 
                       levels = c('New York', 'California','Florida'),
                       labels = c(1,2,3))

set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split==T)
testing_set = subset(dataset, split==F)

regressor = lm(formula = Profit ~ ., 
               data = dataset)

y_pred = predict(regressor, newdata = testing_set)
testing_set

print(regressor)
summary(regressor)

y = mx + c 
