## 04 Temperature index plot enhanced.R

# We add just a few more tweaks to the previous plot 

library(tidyverse)

# Read in data using read_csv() function from readr library
Data <- read_csv("~/Documents/Pablo_Desktop/Github_Pablo_Source_Local_copy/climate_viz/data/Global_temp.csv",
                 skip = 1, na = "***") %>% 
  select(Year, 'J-D') %>% 
  select(year = Year, t_diff = 'J-D')
Data

# Existing features

# 1.  Using a dummy variable inside  aes(color ="1") to change legend default color
# 1.1 Assigned color to legend (using geom_line(aes(color = "1"))
# 2.  We add show.legend = FALSE value to the geom_point() function
# 2.1 geom_point(fill="white", aes(color="1"),shape = 21, show.legend = FALSE)
# 3.  Define new colour for our legend
# 3.1 Using scale_color_manual() function, we define colors for our new legends (we want them to be gray and black colors)
#     scale_color_manual(): We define our own set of mappings from levels in the data to aesthetic values
# 4. Add theme to format several elements from Title, Subtitles (axis, position, (title color))
# 5  Add geom smooth and use it in the legend
Data_plot_geom_smooth <- Data %>% 
                            ggplot(aes(x = year, y = t_diff)) +
                            geom_line(aes(color = "1"), size = 0.5) +
                            geom_point(fill="white", aes(color="1"),shape = 21, show.legend = FALSE) +
                            labs(title = "Global land-ocean temperature index",
                                 subtitle = "Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS") +
                            scale_color_manual( name = NULL, 
                                                breaks = c(1,2),
                                                values = c("gray","black"),
                                                labels = c("Annual mean","Lowesssmoothing")) +
                            theme (
                                      axis.ticks = element_blank(),
                                      plot.title.position = "plot",
                                      plot.title = element_text(margin = margin(b=10),
                                      color = "sienna2")
                                    ) +
                            geom_smooth(se = FALSE, aes(color = "2"), size = 0.5, span =0.25)

Data_plot_geom_smooth

ggsave("Figures/07 temperature_index_title_geom_smooth_legengs_formatted.png", width = 6, height = 4)

# 6. Finally we change legend position to include it within the plot area
# We need to change slightly the previous theme function, adding a couple of arguments modifying legeng position.

Data_plot_legend_position  <- Data %>% 
                            ggplot(aes(x = year, y = t_diff)) +
                            geom_line(aes(color = "1"), size = 0.5) +
                            geom_point(fill="white", aes(color="1"),shape = 21, show.legend = FALSE) +
                            labs(title = "Global land-ocean temperature index",
                                 subtitle = "Source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS") +
                            scale_color_manual( name = NULL, 
                                                breaks = c(1,2),
                                                values = c("gray","black"),
                                                labels = c("Annual mean","Lowess smoothing")) +
                            theme (
                              axis.ticks = element_blank(),
                              plot.title.position = "plot",
                              plot.title = element_text(margin = margin(b=10),
                                                        color = "sienna2")
                            ) +
                            geom_smooth(se = FALSE, aes(color = "2"), size = 0.5, span =0.25) +
                            # Change legend position
                            theme(
                                  legend.position = c(0.15,0.9),
                                  legend.title = element_text(size =0.9),
                                  legend.key.height = unit(11,"pt") # Increased legend hight
                            )

Data_plot_legend_position

ggsave("Figures/08 temperature_index_legend_position_formatted.png", width = 6, height = 4)




