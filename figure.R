library(dplyr)
library(ggplot2)
library(cowplot)
theme_set(theme_cowplot())
set.seed(298347)
dat <- tibble(x = rnorm(100), y = x + rnorm(100, sd = 0.2))
g1 <- ggplot(dat, aes(x,y)) +
  geom_point()
ggsave('myscript.png',g1)
