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

ggsave("Figures/01 temperature_index_plot_initial_output.png", width = 6, height = 4)

# Feature 01: Modify Title properties
# We use theme() function to change the axis, title and sub-title properties
# Themes are a powerful way to customize the non-data components of your plots:

Data_plot_title <- Data %>% 
                    ggplot(aes(x = year, y = t_diff)) +
                    geom_line() + 
                    geom_point() +
                    labs(title = "Global land-ocean temperature index. \n Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS") +
                    # Add theme to modify Title, subtitles and axis
                   theme (
                     axis.ticks = element_blank(),
                     plot.title.position = "plot",
                     plot.title = element_text(margin = margin(b=10),
                                               color = "sienna2")
                         )
Data_plot_title

ggsave("Figures/02 temperature_index_title_axis_formattedt.png", width = 6, height = 4)

# Add title and subtitle to previous plot            
Data_plot_subtitle <- Data %>% 
              ggplot(aes(x = year, y = t_diff)) +
              geom_line() + 
              geom_point() +
              labs(title = "Global land-ocean temperature index",
                   subtitle = "Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS") +
              # Add theme to modify Title, subtitles and axis
              theme (
                axis.ticks = element_blank(),
                plot.title.position = "plot",
                plot.title = element_text(margin = margin(b=10),
                                          color = "sienna2")
  )
Data_plot_subtitle

ggsave("Figures/03 temperature_index_title_sibtitle_axis_formattedt.png", width = 6, height = 4)

# Feature 02: Draw legend to existing plot

# First we change default color to geoms we use in the plot 

Data_plot_forms <- Data %>% 
  ggplot(aes(x = year, y = t_diff)) +
  # Add legend using aes() inside geom_line() function
  # We use two dummy variables to assign colours to legend
 #  geom_line(color = aes(color="1", size = 0.5)) + 
  geom_line(color = "grey") +
  # We also add colour to geom_point() geom to build our legeng
#  geom_point(fill = "white", aes(color = "1",shape =21)) +
  geom_point(fill="white") +
  labs(title = "Global land-ocean temperature index",
       subtitle = "Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS") +
  # Add theme to modify Title, subtitles and axis
  theme (
    axis.ticks = element_blank(),
    plot.title.position = "plot",
    plot.title = element_text(margin = margin(b=10),
                              color = "sienna2")
  )
Data_plot_forms

ggsave("Figures/04 temperature_index_title_sibtitle_geoms_formattedt.png", width = 6, height = 4)

# Then we add legends to the plot  

Data_plot_legend <- Data %>% 
  ggplot(aes(x = year, y = t_diff)) +
  # Add legend using aes() inside geom_line() function
  # We use two dummy variables to assign colours to legend
  #  geom_line(color = aes(color="1", size = 0.5)) + 
  geom_line(aes(color = "1"), size = 0.5) +
  # We also add colour to geom_point() geom to build our legeng
  #  geom_point(fill = "white", aes(color = "1",shape =21)) +
  geom_point(fill="white", aes(color="1"),shape = 21) +
  labs(title = "Global land-ocean temperature index",
       subtitle = "Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS") +
  # Add theme to modify Title, subtitles and axis
  theme (
    axis.ticks = element_blank(),
    plot.title.position = "plot",
    plot.title = element_text(margin = margin(b=10),
                              color = "sienna2")
  ) +
# Add geom smooth and use it in the legend
geom_smooth(se = FALSE, aes(color = "2"), size = 0.5, span =0.25)

Data_plot_legend

ggsave("Figures/05 temperature_index_title_geom_smooth_incl_legengs.png", width = 6, height = 4)


# Feature 03: Change legend color
# Using two functions: scale_color_manual()

Data_plot_legend_color <- Data %>% 
  ggplot(aes(x = year, y = t_diff)) +
  # Add legend using aes() inside geom_line() function
  # We use two dummy variables to assign colours to legend
  #  geom_line(color = aes(color="1", size = 0.5)) + 
  geom_line(aes(color = "1"), size = 0.5) +
  # We also add colour to geom_point() geom to build our legeng
  #  geom_point(fill = "white", aes(color = "1",shape =21)) +
  geom_point(fill="white", aes(color="1"),shape = 21) +
  labs(title = "Global land-ocean temperature index",
       subtitle = "Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS") +
   # In this step below we define colors for our new legends (we want them to be gray and black colors)
   # scale_color_manual() These functions allow you to specify your own set of mappings from levels in the data to aesthetic values.
  scale_color_manual( name = NULL, 
                      breaks = c(1,2),
                      values = c("gray","black"),
                      labels = c("Annual mean","Lowesssmoothing")
                      ) +
  
  # Add theme to modify Title, subtitles and axis
  theme (
    axis.ticks = element_blank(),
    plot.title.position = "plot",
    plot.title = element_text(margin = margin(b=10),
                              color = "sienna2")
  ) +
  # Add geom smooth and use it in the legend
  geom_smooth(se = FALSE, aes(color = "2"), size = 0.5, span =0.25)

Data_plot_legend_color

ggsave("Figures/06 temperature_index_title_geom_smooth_incl_legends.png", width = 6, height = 4)

# Feature 04: Change legend shape  
# We have to modify geom_point() function to replace them by a square shape

Data_plot_legend_shape <- Data %>% 
  ggplot(aes(x = year, y = t_diff)) +
  # Add legend using aes() inside geom_line() function
  # We use two dummy variables to assign colours to legend
  #  geom_line(color = aes(color="1", size = 0.5)) + 
  geom_line(aes(color = "1"), size = 0.5) +
  # We add show.legend = FALSE value to the geom_point() function
  #   geom_point(fill="white", aes(color="1"),shape = 21, show.legend = FALSE)
  geom_point(fill="white", aes(color="1"),shape = 21, show.legend = FALSE) +
  labs(title = "Global land-ocean temperature index",
       subtitle = "Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS") +
  # In this step below we define colors for our new legends (we want them to be gray and black colors)
  # scale_color_manual() These functions allow you to specify your own set of mappings from levels in the data to aesthetic values.
  scale_color_manual( name = NULL, 
                      breaks = c(1,2),
                      values = c("gray","black"),
                      labels = c("Annual mean","Lowesssmoothing")
  ) +
  
  # Add theme to modify Title, subtitles and axis
  theme (
    axis.ticks = element_blank(),
    plot.title.position = "plot",
    plot.title = element_text(margin = margin(b=10),
                              color = "sienna2")
  ) +
  # Add geom smooth and use it in the legend
  geom_smooth(se = FALSE, aes(color = "2"), size = 0.5, span =0.25)

Data_plot_legend_shape

ggsave("Figures/07 temperature_index_title_geom_smooth_legengs_formatted.png", width = 6, height = 4)

# Feature 05: Change legend position : Change legend shape
# We have to modify geom_point() function to replace them by a square shape
