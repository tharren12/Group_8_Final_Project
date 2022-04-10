# Housing Price Prediction Tool

<p align="center">
  <img width="460" height="300" src="https://user-images.githubusercontent.com/92001105/159185004-07517832-7a16-438e-873c-4a9593e21272.png">
</p>

# Segment 1 Deliverable

## Team Members

* [Trevor Harren](https://github.com/tharren12)
* [Heather Lundy](https://github.com/hal1277)
* [Chuks Nwokedi](https://github.com/Chuks-SN)
* [Mark Okoli](https://github.com/MasterMark2021)

## Project Overview

Housing prices have continued to rise across the US, but for how much longer? What cities may see a rise in prices or a potential drop off? What factors impact the future direction of housing prices? Due to these uncertainties our project team has taken on the task of predicting how housing prices will change in the near term to provide users comfort in making geographic location change choices, when considering relocating to a new city for the long-term.

We believe this is one of the major life decisions an individual or family can make and we are here to provide greater clarity for this significant decision point. In addition users will be able to use the Housing Price Prediction Tool to compare the city they are currently living in with potential new cities, in terms of incomes, population demographics, unemployment and crime statistics. This will provide users with a well-rounded resource to make a better informed decision.

**Group Presentation Link using Google Slides** :

https://docs.google.com/presentation/d/14glzSifOIVrHPW81Po0Lfthr_zLfvLNPCGAjE8V7Zto/edit?usp=sharing

**Group 8 Dashboard link** : https://public.tableau.com/app/profile/trevor.harren/viz/HousingPricesandCityInformationv3/Story2?publish=yes

## Data Sources 

* Housing Pricing data via Zillow House Price Data on Kaggle - https://www.kaggle.com/datasets/paultimothymooney/zillow-house-price-data
* Population Data via US Census data - https://www.census.gov/data/tables/time-series/demo/popest/2010s-total-cities-and-towns.html
* Unemployment and Median Household Income data via Economic Research Service, U.S. Department of Agriculture - https://www.ers.usda.gov/data-products/county-level-data-sets/download-data/
* Crime statistics data via the CORGIS Dataset Project - https://corgis-edu.github.io/corgis/csv/state_crime/

## Communication Protocol
For this project we will be using Slack in conjunction with GitHub as our communication protocols. We will be using Slack for all our discussions. GitHub will be used for the technical collaboration. Any changes will be communicated through Slack before they are committed and pushed to the GitHub repository. Jupiter Notebook and Google Collab will also be used at different stages in the project. 

## Individual Branches

* trevor_branch
* ERD
* ETL
* Heather-branch
* Chuks_branch

## Technology

### Project Management 
The team will be using Jira as a tracking and collaboration tool for this project. It will be used to create a roadmap, timetable, direction and list of tasks. The tool will also be used to show assigned tasks for each member of the team.

We will be able to see ongoing or finished tasks, the time spent on these tasks, and this will make it easier to stay on track for the entire project life cycle.

### ERD

This flow chart outlines the intended databases and connections that will be utilized.

![Group_8_Poject_ER_Design](https://user-images.githubusercontent.com/92001105/159188875-b8dc6516-4a71-48b5-94a7-346540be346c.png)

### Database Connection and Setup
For our database, we will be using PostgreSQL by use of pgAdmin to connect to our AWS RDS Database and we are hosting our raw data in an AWS S3 bucket. This enables anyone with the access codes to work the project data. The entity relational diagram allowed for easier joining of tables with SQL and was a helpful reference while importing data into the database.  See Coonection details below, we have estabilshed connection to AWS and Postgress via Jupiter notebook (AWS_Jupiter Connection)

PGHOST = 'housingtrends.cvhxdrb1pkps.us-east-2.rds.amazonaws.com'

PGDATABASE = 'housingtrends'

PGUSER = 'Postgres'

PGPASSWORD = 'P***x*****'

S3(bucket name) = projectgroup8

### Visual Display

In order to create the dashboard Tableau Public was utilized and the Housing Prices Prediction from the Machine Learning Model was combined with the following information:

- Historical housing prices were sourced from Zillow via Kraggle
- City Population Figures were sourced from US Census data
- Per capita income from US Census data
- Rental prices were sourced from Zumper National Rent Report
- Industry information sourced from Bureau of Labour Statistics
- Unemployment rate sourced from Bureau of Labour Statistics
- Quality of Life Indexes sourced from Numbeo

The Machine Learning extract and the above metrics were brought together and merged to create an input file for the dashboard and brought into Tableau.

![image](https://user-images.githubusercontent.com/92001105/162638814-a8910016-5b06-433d-8623-8447acb45f1f.png)

### Machine Learning Model

This flow chart outlines the intended plan to create the machine learning model.  

![Machine Learning Model Flow Chart](https://github.com/tharren12/Group_8_Final_Project/blob/500ded078ba0439e23801722cb7707570c39123b/ML_flow_chart.png)

The housing data set we have contains average prices by city and a few other columns such as state, city rank, and county.

The orignal data set contained data from the entirety of the US but we have chosen to focus on a Top 50 City list.  The dataset had to be transposed so that the time series was in the rows instead of the columns.  The RegionName (city) was then set as the column names.  

While the data set did contain data other than the time series pricing we determined that none of the additional data added anything that would enchance the models performance so all features except the time series data were dropped (ex. county, state).  The data did not contain any features about the houses themselves which could be relevant for determing house prices.  

Wee selected data from the time period of January 2010 through to February 2020 which was the last month of data avialble from Zillow.  We used the entirety of this data to create a linear regression for each of our top cities.  

In parallel we did create a Linear Regression model and a LSTM RNN model but the LSTM RNN model significantly underperformed versus the much simpler Linear Regression model.  Typically, the simplest model would be generated first and a more complex model would only be considered if the simple model did not perform to a high enough standard.  However, we were looking to stretch oursleves and expand our knowledge of machine learning models so we deployed both models simulataneously knowing that the Linear Regression model would act as our baseline for comparing the LSTM RNN model.  This gave us a point of reference when trying to modify and train the LSTM RNN model.  Despite considerable effort to modify and train the LSTM RNN model we were not able to get it to match the performance of the Linear Regresssion model.  Following the guidance of good practices we must choose the Linear Regression model for our project because good practice dictates that the simplest solution with acceptable results should be used.

For the linear regression model all the months of data were used to fit the line to the data set and that line was then used to predict future values.  For the LSTM RNN model we used the first 103 months of data to train the model and retained the last 20 months of data to use for testing.  If we had more data points we may have left a larger percentage of the data for testing but we felt it was important to use as much of the data as possible for training so that is why we went with an 80/20 training/testing split rather than the more typical 70/30 or 60/40 split.  

Therefore the the Linear Regression model will be used to feed our dashboard.  It performed very well in half of the cities with R-squared values over 0.9.  It performed well and suggested a strong correlation betweeen time and house prices in another 35% of the cities with R-squared values between 0.7 and 0.9.  In a small percentage of the citites the R-squared values were below 0.7 suggesting that there may be other features than time affecting pricing and that a more robbust model, such as ARIMA, might be more appropriate in some cases. This could be explored further in future ehnancements of this house pricing tool.  As well we established the MSE, RMSE, and MAE values for the Linear Regression model for all cities and in the LSTM RNN model for New York City.  These results can be seen in the google slides - https://docs.google.com/presentation/d/14glzSifOIVrHPW81Po0Lfthr_zLfvLNPCGAjE8V7Zto/edit?usp=sharing and in the stats file - https://github.com/tharren12/Group_8_Final_Project/blob/fd5b00982c30189b841f41efa6cee64226a1fc9f/ML/Linear_regression_R_Squared.csv

We are using the model to predict the average house price by Top 50 City for the year following the end of our data set.  

In the future the model should continue to be trained and refined as Zillow adds additional months of data to their data file.  




