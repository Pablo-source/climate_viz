## 03 Temperature index plot.R

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

# Draw an initial quick exploratory line chart of temperature differences 
Data_plot <- Data %>% 
  ggplot(aes(x = year, y = t_diff)) +
  geom_line() + 
  geom_point() +
  labs(title = "Global land-ocean temperature index. \n Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS ")
Data_plot

ggsave("Figures/temperature_index_plot_initial_output.png", width = 6, height = 4)

# Feature 01: Modify Title properties
# We use theme() function to change the axis, title and sub-title properties
# Themes are a powerful way to customize the non-data components of your plots:

Data_plot_title <- Data %>% 
                    ggplot(aes(x = year, y = t_diff)) +
                    geom_line() + 
                    geom_point() +
                    labs(title = "Global land-ocean temperature index. \n Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS ") +
                  # Add theme to modify Title, subtitles and axis
                   theme (
                     axis.ticks = element_blank(),
                     plot.title.position = "plot",
                     plot.title = element_text(margin = margin(b=10),
                                               color = "cornflowerblue"
                         )
Data_plot_title

ggsave("Figures/temperature_index_title_axis_formattedt.png", width = 6, height = 4)

# Feature 02: Modify Title properties
# We use theme() function to change the axis, title and sub-title properties
# Themes are a powerful way to customize the non-data components of your plots:

Data_plot_title <- Data %>% 
  ggplot(aes(x = year, y = t_diff)) +
  geom_line() + 
  geom_point() +
  labs(title = "Global land-ocean temperature index. \n Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS ") +
  # Add theme to modify Title, subtitles and axis
  theme (
    axis.ticks = element_blank(),
    plot.title.position = "plot",
    plot.title = element_text(margin = margin(b=10),
                              color = "brown2"
    )
    Data_plot_title
    
    ggsave("Figures/temperature_index_title_axis_formattedt.png", width = 6, height = 4)
    

# Feature 02: Modify Title properties
    # We use theme() function to change the axis, title and sub-title properties
    # Themes are a powerful way to customize the non-data components of your plots:
    
    Data_plot_title <- Data %>% 
      ggplot(aes(x = year, y = t_diff)) +
      geom_line() + 
      geom_point() +
      labs(title = "Global land-ocean temperature index. \n Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS ") +
      # Add theme to modify Title, subtitles and axis
      theme (
        axis.ticks = element_blank(),
        plot.title.position = "plot",
        plot.title = element_text(margin = margin(b=10),
                                  color = "gold1"
        )
        Data_plot_title
        
        ggsave("Figures/temperature_index_title_axis_formattedt.png", width = 6, height = 4)
        
# Feature 02: Modify Title properties
        # We use theme() function to change the axis, title and sub-title properties
        # Themes are a powerful way to customize the non-data components of your plots:
        
        Data_plot_title <- Data %>% 
          ggplot(aes(x = year, y = t_diff)) +
          geom_line() + 
          geom_point() +
          labs(title = "Global land-ocean temperature index. \n Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS ") +
          # Add theme to modify Title, subtitles and axis
          theme (
            axis.ticks = element_blank(),
            plot.title.position = "plot",
            plot.title = element_text(margin = margin(b=10),
                                      color = "darkorchid1"
            )
            Data_plot_title
            
            ggsave("Figures/temperature_index_title_axis_formattedt.png", width = 6, height = 4)
    
        olivedrab1
    