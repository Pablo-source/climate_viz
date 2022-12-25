# climate_viz
Climate change visualizations and Github

# Project to practise how to integrage RStudio project with GitHub 

## AIM

This GitHub repo has been created to practise how to create brand new **RStudio project linked to GitHub** projects. This is done by creating a new Project in RStudio and selecting **Version Control** option, this allows us to link a local RStudio project with an existing GitHub project we would have created previouisly, called climate_viz.

I will be using RStudio to create several R and Rmarkdown scripts, doing GiHub commits and pusth actions to this **climate_viz** GitHub repo. 

### References

1. Tutorial for Creating a new RStudio project with GitHub to visualize climate change (CC213). Riffamonas Project. 
https://www.youtube.com/watch?v=d5dUkO5lXds&list=PLmNrK_nkqBpLdTEOj_-bwp58490i8ezRI&index=9

2. Tutorial to mimic Climate Change temperature visualization from NASA. "Plotting the global temperature index using ggplot2 and NASA GISS data (CC214)"  
https://www.youtube.com/watch?v=fskblEWSeWU. From https://www.youtube.com/@Riffomonas youtube channel.

### Output

Following the above videos, I am replicating the Global Temperature plot displayed when selecting “**Global Temperature**” indicator from above website.


### Data download from GISS Surface Temperature Analysis (GISTEMP v4) website from the National Aeronautics and Space Administration Goddard Institute for Space Studies.

https://climate.nasa.gov/

Download data for this plot from 

https://data.giss.nasa.gov/gistemp/

Tables of Global and Hemispheric Monthly Means and Zonal Annual Means

Global-mean monthly, seasonal, and annual means, 1880-present, updated through
most recent month: TXT, CSV

We download the CSV file for this data

GLOBAL LAND-OCEAN TEMPERATURE INDEX

Data source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS


### Project outline

1. Learn how to obtain a **personal access token in GiHub** to Clone the newly created GitHUb repository **climate_viz**

2. Create a new version control project in RStudio. And also create new folders within this new project

3. When creating this new version control project I will need the **HTTPS** GitHub climate_viz URL address to link my local RStudio Project with GitHub.This will allow me to create new GitHub **actions** such as **Commit** and **Push** from **RStudio** directly into my GitHub repository

4. In RStudio I have created several README files as .md files and save them each of them on the corresponding project sub-folders:
- Code/README.md
- data/README.md
- Figures/README.md

5. Commit each changes (for start on these README files) from RStudio to GitHub using the Git tab enabled by creating a new version control project in RStudio

6. Then Push the changes to the GitHub repo to be able to go over the GitHub website and see the new files published in the climate_viz repository

7. Create several ggplot2 files saved as .png as output of this whole analysis

8. In the next phase of this project i will create these plots and publish them to a GitHub website. 

9. And finally, create several GitHub actions to automate the refresh of these plots on the above website when new data becomes available. To practise the set of GitHub actions that enable to atuomate the creation of Markdown and HTML documents 
