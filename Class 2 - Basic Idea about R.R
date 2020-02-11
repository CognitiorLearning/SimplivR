#Using file.choose()
#setwd command
#setwd("D:/D/Edureka/Edureka - 24 June - Python/Class 5")

stats <- read.csv(file.choose() )
stats

#To remove the dataframe from RAM 
rm(stats)

stats <- read.csv('DemographicData.csv')

#Helping me understand the data
nrow(stats)
ncol(stats)


head(stats, n=2)
tail(stats, n=2)

#Structure of the dataframe
str(stats)

summary(stats)



#Slicing and dicing the data

stats[3,3]
stats[3,'Birth.rate']
stats$Internet.users[2]
stats[2,'Internet.users']
stats[2:5,'Internet.users']
levels(stats$Income.Group)


#Basic operations with dataframe
stats[1:10,2:5]
stats[100,]
stats[c(4,100),c(1,3,5)]

stats$mycalc <- stats$Internet.users * stats$Birth.rate
head(stats)

stats$mycalc <- NULL

#Filtering the data

stats

stats[stats$Internet.users<2, ]
stats$Internet.users<2

stats[stats$Birth.rate>40 & stats$Internet.users<2, ]
stats[stats$Birth.rate>40 | stats$Internet.users<2, ]
stats[stats$Income.Group=='High income', ]


#Introduction to data visualization 
install.packages('ggplot2')
library(ggplot2)

#It will generate the histogram which helps us to 
#identify the data distribution by internet users
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate)
qplot(data=stats, x=Income.Group, y= Birth.rate, size=I(5))
qplot(data=stats, x= Income.Group, y = Birth.rate, 
      size=I(5), color = I('Blue') )

qplot(data=stats, x= Internet.users, y=Birth.rate)
qplot(data=stats, x = Internet.users, y = Birth.rate,
      size=I(5), color=Income.Group, alpha = I(0.6))



#Execute below code to generate three new vectors
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")


myregion <- data.frame(Countries_2012_Dataset,
                       Codes_2012_Dataset, 
                       Regions_2012_Dataset)

colnames(myregion) <- c('Country','Code','Region')

rm(myregion)

myregion <- data.frame(Country = Countries_2012_Dataset,
                       Code = Codes_2012_Dataset,
                       Region = Regions_2012_Dataset)





stats
myregion

#Inner Join 
merged <- merge(stats, myregion, by.x = 'Country.Code', 
                by.y = 'Code')

#Left Outer Join 
merged <- merge(stats, myregion, by.x = 'Country.Code', 
                by.y = 'Code', all.x = TRUE)



#Right Outer Join 
merged <- merge(stats, myregion, by.x = 'Country.Code', 
                by.y = 'Code', all.y = TRUE)

#Full Outer Join 
merged <- merge(stats, myregion, by.x = 'Country.Code', 
                by.y = 'Code', all = TRUE)

merged$Country<-NULL

#Final Viz
qplot(data=merged, x = Internet.users, y = Birth.rate,
      size=I(5), color=Region, alpha = I(0.6))



#Introduction to the dplyr package

install.packages('dplyr')
library(dplyr)
library(datasets)

head(airquality)

filter(airquality, Temp>70)
filter(airquality, Temp > 80 & Month > 5)
mutate(airquality, TempInc = (Temp -32)*5/9)
summarise(airquality, mean(Temp, na.rm=TRUE))
summarise(group_by(airquality, Month), mean(Temp, na.rm = T))
count(airquality, Month)

arrange(airquality, desc(Month),Day)



filterdata <- filter(airquality, Month !=5)
groupdata <- group_by(filterdata, Month)
summarise(groupdata, mean(Temp, na.rm = T))

airquality %>%
  filter(Month!=5) %>%
  group_by(Month) %>%
  summarise(mean(Temp, na.rm = T))








