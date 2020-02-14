#Handson on Logistic Regression
#Import the dataset
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]
dataset

library(caTools)
dataset$Purchased = factor(dataset$Purchased, levels = c(0,1))
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio=0.75)
training_set = subset(dataset, split==TRUE)
test_set = subset(dataset, split==FALSE)




classifier = glm(formula =  Purchased ~ .,
                 family = binomial, 
                 data = training_set)



prob_pred = predict(classifier, type='response', 
                    newdata = test_set[-3])


y_pred = ifelse(prob_pred>0.5, 1 ,0)
#To predict the accuracy of the model  - Confusion Matrix 
cm = table(test_set[,3], y_pred>0.5)
cm

#Hands on KNN 
#This package helps us to run KNN model
library(class)
y_pred = knn(train = training_set[,-3],
             test = test_set[,-3],
             cl = training_set[,3],
             k=5, 
             prob=T)

cm_knn = table(test_set[,3], y_pred)
cm_knn

#Hands on SVM

library(e1071)
classifier_svm = svm(formula = Purchased ~ .,
                     data=training_set,
                     type = 'C-classification',
                     kernel = 'sigmoid')
?svm

y_pred = predict(classifier_svm, newdata=test_set)

cm_svm_sig = table(test_set[,3], y_pred)
cm_svm_sig
  
classifier_svm_rbf = svm(formula = Purchased ~ .,
                     data=training_set,
                     type = 'C-classification',
                     kernel = 'radial')

y_pred = predict(classifier_svm_rbf, newdata=test_set)

cm_svm_rbf = table(test_set[,3], y_pred)

cm_svm_rbf

classfier_nb = naiveBayes(x=training_set[-3],
                          y = training_set$Purchased)

y_pred = predict(classfier_nb, newdata=test_set[-3])
cm_nb = table(test_set[,3],y_pred)
cm_nb


library(rpart)
classifier_dt = rpart(formula = Purchased ~ . , 
                      data = training_set)
y_pred = predict(classifier_dt, newdata= test_set[-3], 
                 type='class')
cm_dt = table(test_set[,3], y_pred)
cm_dt


library(randomForest)
classifier_rf = randomForest(x=training_set[-3],
                             y = training_set$Purchased,
                             ntree = 5)

y_pred = predict(classifier_rf, newdata = test_set[-3])

cm_rf = table(test_set[,3], y_pred)
cm_rf




#K-Means Clustering 

dataset = read.csv('Mall_Customers.csv')
dataset = dataset[4:5]
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
plot(1:10,
     wcss,
     type='b',
     main=paste('The elbow method'),
     xlab='Number of cluters',
     ylab = 'wcss')

kmeans = kmeans(x=dataset, centers = 6)
y_kmeans = kmeans$cluster

library(cluster)
clusplot(dataset , 
         y_kmeans,
         lines = 0,
         shade = T,
         color = T,
         labels = 0, 
         plotchar = F,
         span = T,
     main = paste('Clusters of customers'),
     xlab = 'Annual Income',
     ylab = 'Spending Score'
         )
?clusplot

y_kmeans





