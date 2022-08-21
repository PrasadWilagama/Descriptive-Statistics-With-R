setwd("Set your Path")
data <-read.csv("DATA 3.csv",header=TRUE)
fix(data)

#change the column names
names(data) <-c("Age","Gender","Accommodation")

#specify and code categorical variables 
data$Gender <- factor(data$Gender,c(1,2), c("Male","Female"))

data$Accommodation <- factor(data$Accommodation, c(1,2,3),c("Home","Boarded","Lodging"))

#To attach the data
attach(data)

# Frequency tables
gender.freq <- table(Gender)
gender.freq
acc.freq <- table(Accommodation)
acc.freq


# Pie charts
pie(gender.freq, main = "Pie Chart for Gender")
pie(acc.freq, main = "Pie Chart for Accommodation")


#Bar chart 
barplot(gender.freq, main = "Bar Chart for Gender", ylab = "Frequency")

barplot(acc.freq, main = "Bar Chart for Accommodation", ylab = "Frequency")
abline(h=0) ##Always run both lines together

# Two-way frequency table
gender_acc.freq <-table(Gender,Accommodation)
gender_acc.freq


# Stacked bar chart
barplot(gender_acc.freq, main = "Gender & Accommodation", legend = rownames(gender_acc.freq))

# Clustered bar chart
barplot(gender_acc.freq, beside = TRUE, main = "Gender & Accommodation", legend = 
          rownames(gender_acc.freq))


# Side-by-Side boxplots
boxplot(Age~Gender, main = "Boxplots for Age by Gender", xlab = "Gender", ylab = "Age")


boxplot(Age~Accommodation, outpch = 8, main = "Boxplots for Age by Accommodation", 
        xlab = "Accommodation", ylab = "Age")


# 2 categorical with a numerical
xtabs(Age~Gender+Accommodation)/gender_acc.freq




