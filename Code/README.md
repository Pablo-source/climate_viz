# readme for code folder

Scripts created for this Surface Temperatures plot
We will download original data from URL using .csv file URL
- https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv

- 00 Project folder setup.R
This scrips is used to create new folder to save project input and output files
- 01 Download data from GISS NASA website.R
We download data from NASA website 
- 02 Import data into R.R
Import data using read_csv() function and draw initial exploratory plot using ggplot from tidyverse packages
- 03 Temperature index plot.R
We modify title format, adding title and subtitles to initial plot, add legend, add line and dot geoms as well as a smooth line
- 04 Temperature index plot enhanced.R
Change default legend colour, change legend position to be drawn inside the plot area, apply specific theme to legend

Finally we save output from latest  R Script as: 

08 temperature_index_legend_position_formatted.png

This plot includes all features added through the four set of R scripts we have created.
