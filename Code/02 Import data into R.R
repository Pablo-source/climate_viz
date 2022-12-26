## 02 Import csv data into R.R

# Read .csv data file into R using read_csv() function from readr package
# Part of tidyverse universe
library(tidyverse)

# Read in data using read_csv() function from readr library


Data <- read_csv("~/Documents/Pablo_Desktop/Github_Pablo_Source_Local_copy/climate_viz/data/Global_temp.csv",
                 skip = 1, na = "***") %>% 
        select(Year, 'J-D') %>% 
        select(year = Year, t_diff = 'J-D')
Data