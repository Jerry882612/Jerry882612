
library(ggplot2)


ccdata<- read.csv("UCI_Credit_Card.csv")


str(ccdata)


ccdata$SEX<- as.factor(ccdata$SEX)

levels(ccdata$SEX)<-c("Male", "Female")


ccdata$EDUCATION<-as.factor(ccdata$EDUCATION)

levels(ccdata$EDUCATION)<-c("Unknown", "Graduate School", "University", "High school", "Others", "Unknown", "Unknown")



ggplot(data = ccdata, aes(x = AGE)) + geom_histogram(bins = 30, fill = "yellow",col = "black",alpha = 0.5)+ 
  
  scale_x_continuous(breaks = seq(min(10), max(80), by = 10), na.value = TRUE)


ggplot(data = ccdata, aes(x = EDUCATION, fill = EDUCATION)) + geom_bar() + 
  scale_y_continuous(breaks = seq(min(0), max(15000), by = 1000), na.value = TRUE)



ggplot(data= ccdata, aes(x=SEX, fill = SEX)) + geom_bar() + 
  labs(title="Gender wise Bar Chart", 
       subtitle="Clients by Sex",x="Sex",fill="Sex")









