library(ggplot2)
p<- cats_vs_dogs
ggplot(p, mapping = aes(n_dog_households, n_cat_households, color=state))+
  geom_boxplot()

