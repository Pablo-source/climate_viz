## 00 Project folder setup

library(here)

project_setup <-function(){
  
  if(!dir.exists("data")){dir.create(here::here("data"))}
  if(!dir.exists("Output")){dir.create(here::here("Output"))}
  if(!dir.exists("Shapefiles")){dir.create(here::here("Shapefiles"))}
  if(!dir.exists("Checks")){dir.create(here::here("Checks"))}
  if(!dir.exists("Maps")){dir.create(here::here("models"))}
  if(!dir.exists("Archive")){dir.create(here::here("Archive"))}

} 

# Run code below to use function and create folder structure
project_setup()