# climate_viz
Workflow using RStudio linked to a GitHub project, to commit works to git version control, aimed to create ggplot2 plots about climate change metrics

# Project to practise how to integrate RStudio with GitHub 

## AIM

I have setup this GitHub repo to practise a new workflow with **RStudio project linked to GitHub**. Creating a new Project in RStudio and selecting **Version Control** option, allowing local RStudio project to link with an existing GitHub repository previouisly created, called climate_viz.

RStudio is used to create several R and Rmarkdown scripts, doing **commits** and **pusth** GitHub actions to this **climate_viz** GitHub repo from the IDE. 

### References

1. Tutorial for Creating a new RStudio project with GitHub to visualize climate change (CC213). Riffomonas Project
https://www.youtube.com/watch?v=d5dUkO5lXds&list=PLmNrK_nkqBpLdTEOj_-bwp58490i8ezRI&index=9

2. Tutorial to mimic Climate Change temperature visualization from NASA. "Plotting the global temperature index using ggplot2 and NASA GISS data (CC214)"  
https://www.youtube.com/watch?v=fskblEWSeWU. From https://www.youtube.com/@Riffomonas youtube channel

### Output

Following the above videos, I am replicating the Global Temperature plot displayed when selecting “**Global Temperature**” indicator from GISS Surface Temperature Analysis (GISTEMP v4) website.


### Data 

Data for this visualization download from GISS Surface Temperature Analysis (GISTEMP v4) website from the National Aeronautics and Space Administration Goddard Institute for Space Studies.

https://climate.nasa.gov/

Download data for this plot from 

https://data.giss.nasa.gov/gistemp/

Tables of Global and Hemispheric Monthly Means and Zonal Annual Means

We download the CSV file below for this project: 

Global-mean monthly, seasonal, and annual means, 1880-present, updated through
most recent month: TXT, CSV

GLOBAL LAND-OCEAN TEMPERATURE INDEX

Data source: NASA's Goddard Institute for Space Studies (GISS). Credit: NASA/GISS


### Project outline

1. Learn how to obtain a **personal access token in GiHub** to Clone the newly created GitHUb repository **climate_viz**

- Check existing SSH key and adding it to the SSH-agent
- https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys
- https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

- Add a new SSH Key to your GitHub account
- https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

2. Create a new version control project in RStudio. And also create new folders within this new project

![image](https://user-images.githubusercontent.com/76554081/209535212-4613b5fe-59e9-40c2-b1e5-defa1480365c.png)
![image](https://user-images.githubusercontent.com/76554081/209535225-4ccd6291-6d72-44ef-8782-a5a7bd06c65e.png)

3. When creating this new version control project I will need the **HTTPS** GitHub climate_viz URL address to link my local RStudio Project with GitHub.This will allow me to create new GitHub **actions** such as **Commit** and **Push** from **RStudio** directly into my GitHub repository

![image](https://user-images.githubusercontent.com/76554081/209535399-8c40c258-e5b3-4215-ab09-a8c444cdb3cf.png)

![image](https://user-images.githubusercontent.com/76554081/209535440-4f3fe797-7a3d-4556-b739-285009519474.png)

4. In RStudio I have created several README files as .md files and save them each of them on the corresponding project sub-folders:
- Code/README.md
- data/README.md
- Figures/README.md

5. Commit each changes (for start on these README files) from RStudio to GitHub using the Git tab enabled by creating a new version control project in RStudio

![image](https://user-images.githubusercontent.com/76554081/209535893-f7e0cf14-6f73-4ef9-822c-278463402646.png)
![image](https://user-images.githubusercontent.com/76554081/209535916-49eb747a-2d35-4c5c-bba3-caa0a418ec05.png)

6. Then Push the changes to the GitHub repo to be able to go over the GitHub website and see the new files published in the climate_viz repository

![image](https://user-images.githubusercontent.com/76554081/209536005-187dddbc-fcbe-4635-a9a9-63c8b15ff8ba.png)
![image](https://user-images.githubusercontent.com/76554081/209536385-51bbffe4-3488-48a3-95cc-6dd2a2350525.png)

7. Create several ggplot2 files saved as .png as output of this whole analysis

- This is the first plot without any enhancements: 
![01 temperature_index_plot_initial_output](https://user-images.githubusercontent.com/76554081/209705318-29ab568e-a531-4a95-bb54-d462d9eb8501.png)

- Below is a plot after several enhancements on the plot titles and sub-titles design and legends layout
![07 temperature_index_title_geom_smooth_legengs_formatted](https://user-images.githubusercontent.com/76554081/209705354-063c8c5b-caea-4e3c-92ec-6fa51824e69a.png)

Finally we place legend inside the plot area

![08 temperature_index_legend_position_formatted](https://user-images.githubusercontent.com/76554081/210270467-8c9747e8-72e9-49b2-a853-99fd429f5789.png)


8. In the next phase of this project i will create these plots and publish them to a GitHub website

9. And finally, create several GitHub actions to automate the refresh of these plots on the above website when new data becomes available. To practise the set of GitHub actions that enable to automate the creation of Markdown and HTML documents 

By using this Version Control project in RStudio that links with a GitHub project, I have been able to work seamlesly editing and commiting my files from RStudio into this climate_viz GitHub repo, this is a much faster and steamlined workflow than the one I used to work with two weeks ago. 
