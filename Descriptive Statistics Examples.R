setwd("D://This//IS//Your //Path") #set the path 
getwd() #get the working directory

#load the data set
data<-read.table("DATA 4.txt",sep="",header = TRUE)
data
#fixed the data 
fix(data)

#renaming
names(data) <-c("Team","Attendance","Salary","Years")
fix(data)
attach(data)

#question2 Box-Plot, Histogram and Stem-Leaf Plot.
boxplot(Attendance,main="Boxplot for team attendance",ylab="frequancy")
#histogram
hist(Attendance,main = "Histogram for team attendance", ylab = "frequancy",xlab = "Attendance")
#stem leaf
stem(Attendance)

#question2 b  Mean, Median and Standard Deviation.
mean(Attendance)
median(Attendance) 
sd(Attendance)

#question2 c  First and Third Quartile. 
quantile(Attendance)
quantile(Attendance)[2]
quantile(Attendance)[3]
quantile(Attendance)[4]

#question2 d Interquartile Range. 
IQR(Attendance)
ex <- table(Years)
ex
summary(Attendance)
#question3  . Write a function to find the modes of a given set of values. Check the function by finding the 
#mode of the variable "Years". 
get.mode <-function(y){
  counts <- table(y);
  names(counts)[counts==max(counts)]
}
get.mode(Years)
#question4   Write a function that would produce the outlines when the values are given. Check the function 
#with the 3 variables in the dataset.
get.outliers <-function(z){
q1<-quantile(z)[2]
q3<-quantile(z)[4]
iqr <- q3-q1
ub <-q3 + 1.5 * iqr
lb <-q1 - 1.5 * iqr

print(paste("upperbound: ",ub))
print(paste("lowerbound: ",lb))
print(paste("Outliers: ",paste(sort(z[z<lb|z>ub]),collapse = "")))
}
get.outliers(Years)
