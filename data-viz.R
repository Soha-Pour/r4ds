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

