#Demographic Analysis
#Method1:manual file selection
stats<-read.csv(file.choose())


#Method2 : Working Directory and Read data

getwd()
#Windown
setwd("C:/Users/Abhishek/Documents")#needs work 
 stats

 
 # DATA EXPRORATION (Demographic Data) 
 
 nrow(stats)
 # 195 rows imported
ncol(stats) 
 # 5 columns imported
head(stats)
#top 6 rows
# number of rowms and columns can be specified with ,n= x
tail(stats)
#bottom 6 rows
str(stats)
#struture of the data frame
?runif
?dunif
runif(stats)
rnorm(stats)

summary(stats)
#Summary of demographic data

# using $ sign
# $ does not work for matices but works for data frames

stats[3,3]
stats[3,"Birth.rate"]
#Afganisatan
stats$Internet.users[2]
stats$Country.Name[2]
stats$Income.Group[2]

levels(stats$Income.Group)
levels(stats$Country.Name)
levels(stats$Birth.rate)
levels(stats$Internet.users)
levels(stats$Country.Code)

# Basic operations of data frame

stats[1:10,]#subsetting
stats[3:9,]
stats[c(4,100),]
is.data.frame(stats[1,])
is.data.frame(stats[,1])#not a DF
is.data.frame(stats[,1,drop=F])#add drop not to drop dimension
stats[,1,drop=F]
is.data.frame(stats[,1,drop=T])


#multiply columns

stats$Internet.users*stats$Birth.rate
stats$Internet.users+stats$Birth.rate
stats$Internet.users/stats$Birth.rate

#add column
stats$myCalc<-stats$Internet.users*stats$Birth.rate

head(stats)
#recycling of vectors
stats$xyz <- 1:5
#remove column
stats$myCalc<-NULL
stats$xyz<- NULL

#filtering DF

Filter1<-stats$Internet.users<2
stats[Filter1,]#Countries with less than 2% internet users
Filter2<-stats$Birth.rate>40
Filter2#countries with <40% birthrate
stats[Filter2,]
stats[stats$Internet.users<2&stats$Birth.rate>40,]
      Filter3<-stats[stats$Internet.users<2&stats$Birth.rate>40,]
      Filter3
stats[stats$Income.Group=="High income",]
stats[stats$Income.Group=="Low income",]
levels(stats$Income.Group)
stats[stats$Income.Group=="Lower middle income",]
stats[stats$Income.Group=="Upper middle income",]
nrow(stats[stats$Income.Group=="Upper middle income",])#48
nrow(stats[stats$Income.Group=="Lower middle income",])#50
nrow(stats[stats$Income.Group=="Low income",])#30
nrow(stats[stats$Income.Group=="High income",])#67
head(stats)
#Malta Stats in DF
stats[stats$Country.Name=="Malta",]
stats[stats$Country.Name=="India",]
#High income group analysis 
stats[stats$Income.Group=="High income"&stats$Internet.users>=50,]
nrow(stats[stats$Income.Group=="High income",])#67
stats[stats$Income.Group=="High income",]
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=50,])#65
stats[stats$Income.Group=="High income"&stats$Internet.users>=50,]
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=60,])#58
stats[stats$Income.Group=="High income"&stats$Internet.users>=60,]
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=70,])#41
stats[stats$Income.Group=="High income"&stats$Internet.users>=70,]
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=75,])#31
stats[stats$Income.Group=="High income"&stats$Internet.users>=75,]
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=80,])#25
stats[stats$Income.Group=="High income"&stats$Internet.users>=80,]
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=85,])#16
stats[stats$Income.Group=="High income"&stats$Internet.users>=85,]
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=90,])#10
stats[stats$Income.Group=="High income"&stats$Internet.users>=90,]
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=95,])#3
stats[stats$Income.Group=="High income"&stats$Internet.users>=95,]
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=96,])#1
stats[stats$Income.Group=="High income"&stats$Internet.users>=96,]
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users<=50,])#2
stats[stats$Income.Group=="High income"&stats$Internet.users<=50,]
#Low income group analysis
nrow(stats[stats$Income.Group=="Low income",])#30
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>=5,])#13
stats[stats$Income.Group=="Low income"&stats$Internet.users>=5,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>=10,])#6
stats[stats$Income.Group=="Low income"&stats$Internet.users>=10,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>=12,])#5
stats[stats$Income.Group=="Low income"&stats$Internet.users>=12,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users<=05,])#17
stats[stats$Income.Group=="Low income"&stats$Internet.users<=05,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users<=04,])#14
stats[stats$Income.Group=="Low income"&stats$Internet.users<=04,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users<=03,])#10
stats[stats$Income.Group=="Low income"&stats$Internet.users<=03,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users<=02,])#7
stats[stats$Income.Group=="Low income"&stats$Internet.users<=02,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users<=01,])#1
stats[stats$Income.Group=="Low income"&stats$Internet.users<=01,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users<=.9,])#1
stats[stats$Income.Group=="Low income"&stats$Internet.users<=.9,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users<=.8,])#0
stats[stats$Income.Group=="Low income"&stats$Internet.users<=.8,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>05&stats$Internet.users<13,])#8
stats[stats$Income.Group=="Low income"&stats$Internet.users>05&stats$Internet.users<13,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<13,])#25
stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<13,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<14,])#26
stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<14,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<15,])#28
stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<15,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<16,])#28
stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<16,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<17,])#29
stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<17,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<18,])#29
stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<18,]
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<19,])#30
stats[stats$Income.Group=="Low income"&stats$Internet.users>.8&stats$Internet.users<19,]
 #Segregation based on Country.code
stats[stats$Country.Code=="USA",]
stats[stats$Country.Code=="RUS",]
stats[stats$Country.Code=="KOR",]
stats[stats$Country.Code=="ZWE",]
#Segregation based on Country.Name
stats[stats$Country.Name=="Pakistan",]
stats[stats$Country.Name=="Canada",]
stats[stats$Country.Name=="Mexico",]
stats[stats$Country.Name=="China",]
stats[stats$Country.Name=="Japan",]
stats[stats$Country.Name=="Bangladesh",]
stats[stats$Country.Name=="Nepal",]
levels(stats$Income.Group)
#Segreataion based on "Lower middle income"
stats[stats$Income.Group=="Lower middle income",]
nrow(stats[stats$Income.Group=="Lower middle income",])#50
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users>=50,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users>=50,])#1
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=50,]   
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=50,])#49
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=45,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=45,])#48
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=40,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=40,])#43
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=35,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=35,])#37
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=30,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=30,])#36
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=25,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=25,])#32
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=20,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=20,])#26
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=15,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=15,])#18
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=10,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=10,])
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=05,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=05,])#3
stats(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=04,])
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=04,])#2
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=03,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=03,])#2
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=02,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=02,])#2
stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=01,]
nrow(stats[stats$Income.Group=="Lower middle income"&stats$Internet.users<=25,])#0

#Segreation based on "Upper middle income" group
stats[stats$Income.Group=="Upper middle income",]
nrow(stats[stats$Income.Group=="Upper middle income",])#48
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=50,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=50,])#34
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users>=50,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users>=50,])#14
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=45,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=45,])#27
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=40,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=40,])#21
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=35,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=35,])#15
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=30,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=30,])#12
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=25,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=25,])#9
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=20,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=20,])#9
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=15,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=15,])#5
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=10,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=10,])#3
stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=05,]
nrow(stats[stats$Income.Group=="Upper middle income"&stats$Internet.users<=05,])#0

# Segrataion based on birth rate
stats[stats$Birth.rate<=50,]
nrow(stats[stats$Birth.rate<=50,])#196
stats[stats$Birth.rate<=45,]
nrow(stats[stats$Birth.rate<=45,])#192
stats[stats$Birth.rate<=40,]
nrow(stats[stats$Birth.rate<=40,])#183
stats[stats$Birth.rate<=35,]
nrow(stats[stats$Birth.rate<=35,])#164
stats[stats$Birth.rate<=30,]
nrow(stats[stats$Birth.rate<=30,])#147
stats[stats$Birth.rate<=25,]
nrow(stats[stats$Birth.rate<=25,])#131
stats[stats$Birth.rate<=20,]
nrow(stats[stats$Birth.rate<=20,])#100
stats[stats$Birth.rate<=18,]
nrow(stats[stats$Birth.rate<=18,])#89
stats[stats$Birth.rate<=16,]
nrow(stats[stats$Birth.rate<=16,])#76
stats[stats$Birth.rate<=14,]
nrow(stats[stats$Birth.rate<=14,])#66
stats[stats$Birth.rate<=12,]
nrow(stats[stats$Birth.rate<=12,])#48
stats[stats$Birth.rate<=10,]
nrow(stats[stats$Birth.rate<=10,])#20
stats[stats$Birth.rate<=08,]
nrow(stats[stats$Birth.rate<=08,])#2



#Random wrong code
head(stats[stats$Birth.rate<=50,])
head(stats,10)
?head
head(stats,n=stats$Birth.rate<=50)


#qplot on Demographic data
install.packages("ggplot2")
library(ggplot2)
?qplot

qplot(data=stats, x=Internet.users)
qplot(data=stats, x= Internet.users, y= Birth.rate)
qplot(data=stats, x=Internet.users,y=Birth.rate, size=I(03))
qplot(data=stats, x=Internet.users,y=Birth.rate, size=I(03),color=I("Blue"))
qplot(data=stats, x=Internet.users,y=Birth.rate, size=I(03),color=I("Red"))
qplot(data=stats, x=Internet.users,y=Birth.rate, size=I(03),color=I("Brown"))
qplot(data=stats, x=Internet.users,y=Birth.rate, size=I(03),color=I("Purple"))
qplot(data=stats, x= Internet.users,y=Birth.rate, size=I(03),geom = "boxplot")#does not work beccause needs group
qplot(data=stats, x=Income.Group ,y=Birth.rate ,  geom = "boxplot")
qplot(data=stats, x=Internet.users , y=Birth.rate, geom="boxplot")
qplot(data=stats, x=Income.Group,y=Birth.rate, size=I(03),color=I("Blue"),geom="boxplot")
qplot(data=stats, x=Income.Group,y=Birth.rate, size=I(01),color=I("Blue"),geom="boxplot")
qplot(data=stats, x=Income.Group,y=Internet.users , size=I(01),color=I("Red"), geom="boxplot")
qplot(data=stats, x=Income.Group,y=Internet.users , size=I(01),color=I("Red"), geom="histogram")#did not work 
qplot(data=stats, x=Income.Group,y=Internet.users , size=I(01),color=I("Blue"),geom="boxplot")
qplot(data=stats,x=Income.Group,y=Internet.users, geom="boxplot")
# scatter plot of Internet users and birthrate based on income group
qplot(data=stats, x= Internet.users ,y=Birth.rate , color=Income.Group , size=I(3))

#creating Data Frame
#Execute below code to generate three new vectors
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")


#(c) Kirill Eremenko, www.superdatascience.com

NewDF<-data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)

#Method1
head(NewDF)
colnames(NewDF)<-C("Country","Code","Region")
colnames(NewDF)<-c("Country","Code","Region")
head(NewDF)
rm(NewDF)
#Method2
NewDF<-data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)
Newdf<-data.frame(Country=Countries_2012_Dataset,Codes=Codes_2012_Dataset,Regions=Regions_2012_Dataset)
Newdf
head(Newdf)
nrow(Newdf)#195
ncol(Newdf)#3
#summary of Newdf
summary(Newdf)
summary(Newdf$Country)
summary(Newdf$Codes)
summary(Newdf$Regions)
#Summary of Stats df
summary(stats)
summary(stats$Internet.users)
summary(stats$Income.Group)
summary(stats$Country.Name)
summary(stats$Country.Code)
summary(stats$Birth.rate)

#Merging data frames
MergedDF<-merge(stats,Newdf,by.x = "Country.Code",by.y = "Codes")
MergedDF
summary(MergedDF)
MergedDF$Country<-NULL
head(MergedDF)
tail(MergedDF)

qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03))
# Adding shapes to vizualization
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(01))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(02))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(03))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(04))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(05))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(06))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(07))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(08))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(09))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(10))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(11))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(12))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(13))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(14))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(15))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(16))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(17))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(18))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(19))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(20))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(21))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(22))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(23))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(24))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(25))
qplot(data=MergedDF,x=Internet.users,y=Birth.rate , color= Regions , size=I(03), shape=I(26))#Does not exist
