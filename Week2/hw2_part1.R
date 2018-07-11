
library(ggplot2)

ggplot(data = Orange, aes(x = Tree)) +
  geom_bar(fill = "lightblue", colour = "black")  
#  長條圖


ggplot(data = Orange, aes(x = circumference)) +
            geom_histogram()  #直方圖

ggplot(data = Orange, aes(x =age , y=circumference)) +
  geom_point()   # 點散圖

ggplot(Orange, aes(x=Tree, y=age)) +
  geom_boxplot()   #盒鬚圖

library(GGally)
library(scales)


set.seed(20022012)

Orange_samp <- Orange[sample(1:length(Orange$age), 10), ]

ggpairs(Orange_samp,lower= list(continuous = wrap("points", shape = I('.'))),
        upper = list(combo = wrap("box", outlier.shape = I('.'))))














