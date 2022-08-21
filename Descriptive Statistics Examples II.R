setwd("D://YEAR 2//Y2S2//IT 2110 PRO AND STAT//LAB 5")
getwd()
data <-read.table("Data.txt",header = TRUE,sep=",")
fix(data)
names(data) <-c("company","frequency") 
fix(data)
attach(data)

#q1 Draw a histogram for the above data.
hist(frequency,main = "histogram for shareholders",xlab="shareholders",ylab="frequency")

#q2 Draw a histogram using seven classes where the lower limit is 130 and an upper limit of 270. 
histogram <-hist(frequency,main = "histogram for shareholders",xlab="shareholders",ylab="frequency",breaks = seq(130,270,length=8),right =FALSE)

#q3 Construct the frequency distribution for the above specification.
Breaks <-round(histogram$breaks)
Mids <-histogram$mids
Freq <-histogram$counts

Breaks
Mids
Freq

classes <-c()

for(i in 1:length(Breaks)-1){
  classes[i] <-paste0("[,Breaks[i],",",Breaks[i+1],")
}

classes
cbind(Class= classes,Frequancy = Freq)

#q4 Portray the distribution in the form of a frequency polygon.
lines(Mids,Freq)
plot(Mids,Freq,type = "l",main = "frequency destribution polygon of share holders",xlab="Shareholders",ylab="frequency")

#q5 Portray the distribution in a less-than cumulative frequency polygon.
cfreq <-cumsum(Freq)
cfreq

new <-c()

for (i in 1:length(Breaks)) {
   if(i==1){
     new[i]=0
   }
   else{
    new[i]=cfreq[i-1]
  }
}
new

plot(Breaks,new,type="o",main="cumulative distribution diagram for shareholders",xlab = "Shareholders",ylab = "cumulative frequency")

cbind(Upper = Breaks, cumalative_freq = new)







