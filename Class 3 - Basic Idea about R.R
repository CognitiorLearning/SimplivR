chicago <- read.csv('Chicago-F.csv', row.names = 1)
houston <- read.csv('Houston-F.csv', row.names = 1)
sanfrancisco <- read.csv('SanFrancisco-F.csv', row.names = 1)
newyork <- read.csv('NewYork-F.csv', row.names = 1)

is.data.frame(chicago)
is.matrix(chicago)

#Convert the dataframes to matrices
chicago <- as.matrix(chicago)
houston <- as.matrix(houston)
sanfrancisco <- as.matrix(sanfrancisco)
newyork <- as.matrix(newyork)


weather <- list(chicago, houston, newyork, sanfrancisco)
weather[[2]]
weather[2]


weather <- list(chicago=chicago, 
                houston=houston, 
                newyork=newyork, 
                sanfrancisco=sanfrancisco)
weather$houston


#Apply Family function
#Apply
apply(chicago, 1, mean)
apply(chicago, 2, mean)

apply(chicago, 1, max)
apply(chicago, 1, min)


#Compare
apply(chicago,1,mean)
apply(houston,1,mean)
apply(sanfrancisco,1,mean)
apply(newyork,1,mean)


?lapply
weather

lapply(weather, t)

rbind(chicago, newrow=1:12)
lapply(weather, rbind, newrow=1:12)


rowMeans(chicago)

lapply(weather, rowMeans)

#Lapply more features

weather$chicago[1,1]
weather[[1]][1,1]

lapply(weather, "[",1,1)
lapply(weather, "[",1,)
lapply(weather, "[",,3)

lapply(weather, rowMeans)

lapply(weather, function(x) x[2,])
lapply(weather, function(x) x[5,])
lapply(weather, function(x) x[,12])

#High temp - Low Temp
lapply(weather, function(x) x[1,]-x[2,])

lapply(weather, function(x) round((x[1,]- x[2,])/x[2,],2))

#Sapply
lapply(weather, "[",1,7)
sapply(weather, "[",1,7)

lapply(weather, "[",1,10:12)
sapply(weather, "[",1,10:12)

lapply(weather, rowMeans)
round(sapply(weather, rowMeans),2)




lapply(weather, function(x) round((x[1,]- x[2,])/x[2,],2))
a<-sapply(weather, function(x) round((x[1,]-x[2,])/x[2,],2))

is.matrix(a)





















