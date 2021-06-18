# Load data ---------------------------
library(tidyverse)
library(dplyr)

# Load data frame from ggplot2 package 
ggplot2::mpg
View(mpg)

# View each variable type 
glimpse(mpg)

# Create ggplot
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

# Count rows and columns 
nrow(mpg)
ncol(mpg)

# mapping an aesthetics to a variable
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# Faceting data

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

# Bar charts (two below are interchangable)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds) + 
  stat_count(mapping = aes(x = cut))

# Bar chart of proportion, not count

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = stat(prop), group = 1))


