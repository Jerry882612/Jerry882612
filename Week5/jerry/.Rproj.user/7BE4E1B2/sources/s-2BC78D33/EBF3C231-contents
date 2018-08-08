library(ggplot2)
library(dplyr)

TB = read.csv('UCI_Credit_Card.csv')


TB$default = factor(TB$default)%>%
  as.numeric()
TB$EDUCATION = str_replace_all(TB$EDUCATION, c("5" = "0", "6" = "0", "4" = "0"))


TB$ID = factor(TB$ID)
TB$SEX = factor(TB$SEX, labels = c("male", "female"))
TB$EDUCATION = factor(TB$EDUCATION, labels = c("others","graduate school", "university", "high school"))
TB$MARRIAGE = factor(TB$MARRIAGE, labels = c("others","married", "single","divorce"))
TB$AGE = factor(TB$AGE)


TB$PAY_0 = factor(TB$PAY_0, labels = c("No consumption", "Paid in full", "use revolving credit", "delay 1 month", "delay 2 month","delay 3 month","delay 4 month","delay 5 month","delay 6 month","delay 7 month","delay 8 month"))
TB$PAY_2 = factor(TB$PAY_2, labels = c("No consumption", "Paid in full", "use revolving credit", "delay 1 month", "delay 2 month","delay 3 month","delay 4 month","delay 5 month","delay 6 month","delay 7 month","delay 8 month"))
TB$PAY_3 = factor(TB$PAY_3, labels = c("No consumption", "Paid in full", "use revolving credit", "delay 1 month", "delay 2 month","delay 3 month","delay 4 month","delay 5 month","delay 6 month","delay 7 month","delay 8 month"))
TB$PAY_4 = factor(TB$PAY_4, labels = c("No consumption", "Paid in full", "use revolving credit", "delay 1 month", "delay 2 month","delay 3 month","delay 4 month","delay 5 month","delay 6 month","delay 7 month","delay 8 month"))
TB$PAY_5 = factor(TB$PAY_5, labels = c("No consumption", "Paid in full", "use revolving credit", "delay 2 month", "delay 3 month","delay 4 month","delay 5 month","delay 6 month","delay 7 month","delay 8 month"))
TB$PAY_6 = factor(TB$PAY_6, labels = c("No consumption", "Paid in full", "use revolving credit", "delay 2 month", "delay 3 month","delay 4 month","delay 5 month","delay 6 month","delay 7 month","delay 8 month"))




summary(TB$EDUCATION)
summary(TB$SEX)
summary(TB$MARRIAGE)
summary(TB$AGE)
summary(TB$default.payment.next.month)

names(TB)[2]<-"given_credit"
names(TB)[3]<-"sex"
names(TB)[4]<-"education"
names(TB)[5]<-"marriage"
names(TB)[6]<-"age"
names(TB)[25]<-"default"
names(TB)[7]<-"Sep"
names(TB)[8]<-"Aug"
names(TB)[9]<-"Jul"
names(TB)[10]<-"Jun"
names(TB)[11]<-"May"
names(TB)[12]<-"Apr"





ggplot(TB , aes( x= 'EDUCATION' ))+
  geom_bar(fill = "lightblue")
ggplot(TB , aes( x= 'SEX' ))+
  geom_bar(fill = "lightblue")
ggplot(TB , aes( x= 'MARRIAGE' ))+
  geom_bar(fill = "lightblue")
ggplot(TB , aes( x= 'AGE' ))+
  geom_bar(fill = "lightblue")


ggplot(TB, aes(x = 'AGE', fill = default)) +
  geom_bar() +
  labs(x = 'Age') 
ggplot(TB, aes(x = 'MARRIAGE', fill = default)) +
  geom_bar() +
  labs(x = 'Marriage') 
ggplot(TB, aes(x = 'SEX', fill = default)) +
  geom_bar() +
  labs(x = 'Gender') 
ggplot(TB, aes(x = "AGE", fill = default)) +
  geom_bar() +
  labs(x = 'Age') 
ggplot(TB, aes(x = "EDUCATION", fill = default)) +
  geom_bar() +
  labs(x = 'Education') 

ggplot(TB, aes(x = Sep, y = default, fill = "EDUCATION"))+
  geom_col()+
  facet_wrap(~EDUCATION)

ggplot(TB, aes(x = Aug, y = default))+
  geom_col()
ggplot(TB, aes(x = Jul, y = default))+
  geom_col()
ggplot(TB, aes(x = Jun, y = default))+
  geom_col()
ggplot(TB, aes(x = May, y = default))+
  geom_col()
ggplot(TB, aes(x = Apr, y = default))+
  geom_col()
ggplot(dl, aes(x = Sep, y = default))+
  geom_col()

