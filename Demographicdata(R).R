#Demographic Analysis
#Method1:manual file selection
stats<-read.csv(file.choose())


#Method2 : Working Directory and Read data

getwd()
#Windown
setwd("C:/Users/Abhishek/Documents")
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
#High income group analysis 
stats[stats$Income.Group=="High income"&stats$Internet.users>=50,]
nrow(stats[stats$Income.Group=="High income",])#67
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=50,])#65
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=60,])#58
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=70,])#41
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=75,])#31
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=80,])#25
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=85,])#16
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=90,])#10
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=95,])#3
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users>=96,])#1
nrow(stats[stats$Income.Group=="High income"&stats$Internet.users<=50,])#2
#Low income group analysis
nrow(stats[stats$Income.Group=="Low income",])#30
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>=5,])#13
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>=10,])#6
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>=12,])#5
nrow(stats[stats$Income.Group=="Low income"&stats$Internet.users>12&stats$Internet.users<13,])
 
