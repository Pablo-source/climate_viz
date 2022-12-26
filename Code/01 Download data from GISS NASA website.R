## 01 Download data from 

# Downloaded data from
# https://data.giss.nasa.gov/gistemp/

# Tables of Global and Hemispheric Monthly Means and Zonal Annual Means
# Combined Land-Surface Air and Sea-Surface Water Temperature Anomalies (Land-Ocean Temperature Index, L-OTI)
# The following are plain-text files in tabular format of temperature anomalies, i.e. deviations from the corresponding 1951-1980 means.

# Global-mean monthly, seasonal, and annual means, 1880-present, updated through most recent month: TXT, CSV
# URL table to be donlowaded
# https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv

URL <-c('https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv')
URL

# We use download.file() function from utils package to get Temperature data from GISS NASA

library(utils)

TempData <- function() {
                # Create data directory if doesn't exist
                if(!dir.exists("data")){dir.create("data")}
                # Download master.zip file 
                download.file(
                              url = "https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv",
                              destfile = "data/Global_temp.csv")
            }
# Invoke function
TempData()
