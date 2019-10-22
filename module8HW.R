library(ggplot2)
library(colorspace)
r<- read_file(phd_by_field)
r<- phd_by_field

geom_boxplot(year, n_phd)
ggplot(r, mapping = aes(year,n_phds, color = broad_field)) +
  geom_boxplot()+
  labs(x= "Year", y= "PhDs Earned", title= "Number of PhDs Earned per Year")
ggplot(r, aes(year, n_phds)) +
  geom_point(aes(colour = broad_field))+
  scale_color_brewer(palette = "Set2") +
  labs(x = "Year", 
       y = "PhDs Earnered", 
       title= "Number of PhDs Earned per Year", 
       colour= "Field"
  )
library(tidyverse)

s<- filter(r, broad_field == "Psychology and social sciences")
d<- filter(s, year == "2016")

q<- ggplot(d, mapping = aes("",n_phds, fill= major_field))+
  geom_bar(width = 1, stat = "identity") +
  labs(x= " ", 
       y = "Number of PhDs",
       title= "Number of PhDs in Pschology and Social Sciences in 2016",
       fill= "Field"
       )
 
q

pie<- q + coord_polar("y",start=0)
pie
pie + scale_fill_manual(values=c( "#f0f9e8", "#bae4bc", "#7bccc4", "#2b8cbe"))
  