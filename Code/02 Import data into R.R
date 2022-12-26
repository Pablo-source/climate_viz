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

# We can see the data has been read-in into the format we need
# > Data
# A tibble: 143 × 2
# year t_diff
#<dbl>  <dbl>
#  1  1880  -0.18
#  2  1881  -0.09
#  3  1882  -0.11
#  4  1883  -0.17

# 1. Draw an initial quick exploratory line chart of temperature differences 
Data_plot <- Data %>% 
             ggplot(aes(x = year, y = t_diff)) +
             geom_line() + 
             geom_point() +
             labs(title = "Global land-ocean temperature index. \n Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS ")
Data_plot
  
# Output this initial exploratory plot
ggsave("Figures/temperature_index_plot_initial_output.png", width = 6, height = 4)
