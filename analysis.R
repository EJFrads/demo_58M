#make data frame


df <- data.frame(x= rnorm(50, 16, 4), group = rep(c("g1","g2"), each=25))

 library(tidyverse)                

df %>% group_by(group) %>% 
  summarise(mean = mean(x),
            n = length(n),
            sd = sd(x))
