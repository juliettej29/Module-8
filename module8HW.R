library(ggplot2)
library(colorspace)
r<- read_file(phd_by_field)
r<- phd_by_field

geom_boxplot(year, n_phd)
ggplot(r, mapping = aes(year,n_phds, color = broad_field)) +
  geom_point()+
  labs(x= "Year", y= "PhDs Earned", title= "Number of PhDs Earned per Year")
ggplot(r, aes(year, n_phds)) +
  geom_point(aes(colour = broad_field)) +
  scale_color_brewer(palette = "Set2") +
  labs(x = "Year", 
       y = "PhDs Earnered", 
       title= "Number of PhDs Earned per Year", 
       colour= "Field"
  )






  