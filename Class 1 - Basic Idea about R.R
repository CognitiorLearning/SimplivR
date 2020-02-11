###Session 1 : Types of variables 
#Integer 
Quantity <- 5L
typeof(Quantity)
is.vector(Quantity)

#Double 
sales <- 2.5
typeof(sales)
is.vector(sales)

#Character
Greeting <- "Hello Learners"
typeof(Greeting)

#Logical operators 
# ==
# !=
# <
# >
# <=
# >=
# ! (Not)
# | (or)
# &

#Logical 
is_sales_2.6 <- sales>2.6
typeof(is_sales_2.6)

a <- TRUE
typeof(a)

a <- T
typeof(a)

x<-10
y<-12

x<9 | y==12

5!=5

#While Loop

while (condition){
  statement1
}
statement2

while(FALSE){
  print('Hello')
}
print('Hi')

counter <-1
while (counter<12){
  print(counter)
  counter <- counter+1
}


for (condition){
  statement1
}
statement2


for (i in 1:10){
  print(i)
}

marks = 25

if(marks>35){
  answer<- 'Passed the exam'
} else{
  answer <- 'Failed the exam'
}

if (marks>35 & marks <60){
  answer <- 'Average'
} else {
  if (marks>=60){
    answer <- 'Passed'
  } else {
    answer <- 'Failed'
  }
}





if(marks>35 & marks < 60) {
  answer<-'Average'
} else if (marks >=60){
  answer<-'Passed'
} else {
  answer<-'Failed'
}




myvector <- c(3,4,5,3,4,3,4)

is.numeric(myvector)
is.integer(myvector)
is.double(myvector)



myvector2 <- c('a','b','c')
is.character(myvector2)



myvector3 <- c('a','b','c',7)
myvector3
is.character(myvector3)


a<- c('a','b','c','d','e')

a[c(1,3,5)]
a[c(-2,-4)]

a[-3:-5]

r1 <- c(1,2,3)
r2 <- c(4,5,6)
r3 <- c(7,8,9)

matrix1 <- rbind(r1,r2,r3)
matrix1

matrix2 <- cbind(r1,r2,r3)
matrix2


mydata <- c(1:20)
matrix(mydata,4,5)

colnames(matrix1) <- c('a','b','c')
matrix1
colnames(matrix1)<- NULL




sales_us <- c(2132,4345,3345,4455)
sales_eu <- c(4344,3424,3334,3343)
sales_jp <- c(5543,3334,3445,5666)

profit_us <- c(343,444,544,555)
profit_eu <- c(655,344,544,645)
profit_jp <- c(545,555,343,444)

quarter <- c('Q1','Q2','Q3','Q4')
region <- c('US','EU','JP')


sales_matrix<- rbind(sales_us,sales_eu,sales_jp)
profit_matrix <- rbind(profit_us,profit_eu, profit_jp)
profit_matrix
sales_matrix

colnames(profit_matrix)<- quarter
profit_matrix
rownames(profit_matrix) <- region

colnames(sales_matrix) <- quarter
rownames(sales_matrix) <- region

sales_matrix

profit_matrix/sales_matrix

sales_matrix[3,3]

             
                          