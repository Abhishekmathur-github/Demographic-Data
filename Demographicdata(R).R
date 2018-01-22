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
