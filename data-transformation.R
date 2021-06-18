# Load data ---------------------------
library(tidyverse)
library(dplyr)

install.packages("nycflights13")
library(nycflights13)

# View and explore data

nycflights13::flights
View(flights)

# Filter rows with filter()
filter(flights, month == 8, day == 20)
