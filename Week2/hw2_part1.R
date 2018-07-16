
library(ggplot2)

ggplot(data = Orange, aes(x = Tree)) +
  geom_bar(fill = "lightblue", colour = "black")  
#  ������


ggplot(data = Orange, aes(x = circumference)) +
            geom_histogram()  #�����

ggplot(data = Orange, aes(x =age , y=circumference)) +
  geom_point()   # �I����

ggplot(Orange, aes(x=Tree, y=age)) +
  geom_boxplot()   #��Ž��

library(GGally)
library(scales)


set.seed(20022012)

Orange_samp <- Orange[sample(1:length(Orange$age), 10), ]

ggpairs(Orange_samp,lower= list(continuous = wrap("points", shape = I('.'))),
        upper = list(combo = wrap("box", outlier.shape = I('.'))))













