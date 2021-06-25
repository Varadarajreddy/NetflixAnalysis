library(tidyverse)
netflix_titles <- read.csv("netflix_titles.csv")
pdf("visualization.pdf")
data<-netflix_titles[netflix_titles$release_year>2008,]
ggplot(data, aes(x = release_year, group = type))+
  geom_bar(aes(y = ..prop.., fill = factor(..x..)), stat="count")+
  labs(x = "Years", y = "Fraction", fill = "years")+
  facet_grid(~type)+
  scale_y_continuous(labels= scales::percent)+ggtitle("Proportion of Netflix Tv Show and Movie")
dev.off()