setwd("D://This//IS//Your //Path") #set the path 
getwd()

#import the data set
data<-read.table("Forest.txt",header = TRUE,sep = ",")
data
fix(data)

attach(data) 

#Q2 get the summary of out data set 
str(data)

#Q3 how many observations here 
#517 observations are according to the summary description

#Q4  What is the maximum and minimum wind speed of this data set ?
max(wind)
min(wind)

#Q5 Get five number summary of temperature 
summary(temp)

#Q6 How many outlines are there in the wind variable? 
boxplot(wind,horizontal = TRUE,pch=16)

#Q7 According to the box plot of wind what kind of a distribution it has? 
# Negatively skewed distribution

#8) What is the median of temperature? 
median(temp)

#9) What is the mean and standard variation of wind variable? 
mean(wind)
sd(wind)

#10) What is the interquartile range of wind variable? 
IQR(wind)

#11) How many observations have measured during Friday in August? 
freq<-table(day,month)
freq

#12) What is the average temperature, during September? 
mean(temp[month=="sep"])

#13) On which day have they measured most observations during month of July?
count<-table(day[month=="jul"])
names(count[count==max(count)])

















