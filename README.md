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

Housing prices have continued to rise across the US, but for how much longer? What cities may see a rise in prices or a potential drop off? What factors impact the future direction of housing prices? Due to this uncertainty our project team has taken on the task of predicting how housing prices will change in the near term to provide users comfort in making geographic location change choices, when considering relocating to a new city for the long-term.

We believe this is one of the major life decisions an individual or family can make and we are here to provide greater clarity for this significant decision point. In addition users will be able to use the Housing Price Prediction Tool to compare the city they are currently living in with potential new cities, in terms of incomes, population demographics, unemployment and crime statistics. This will provide users with a well-rounded resource to make a better informed decision.

**Group Presentation Link using Google Slides** :

https://docs.google.com/presentation/d/14glzSifOIVrHPW81Po0Lfthr_zLfvLNPCGAjE8V7Zto/edit?usp=sharing

**Group 8 Dashboard link** : https://public.tableau.com/app/profile/trevor.harren/viz/HousingPricesandCityInformation/Story1?publish=yes

## Data Sources 

* Housing Pricing data via Zillow House Price Data on Kaggle - https://www.kaggle.com/datasets/paultimothymooney/zillow-house-price-data
* Population Data via US Census data - https://www.census.gov/data/tables/time-series/demo/popest/2010s-total-cities-and-towns.html
* Unemployment and Median Household Income data via Economic Research Service, U.S. Department of Agriculture - https://www.ers.usda.gov/data-products/county-level-data-sets/download-data/
* Crime statistics data via the CORGIS Dataset Project - https://corgis-edu.github.io/corgis/csv/state_crime/

## Communication Protocol
For this project we will be using Slack in conjunction with GitHub as our communication protocols. We will using Slack for all our discussions. GitHub will be used for the technical collaboration. Any changes will be communicated through Slack before they are committed and pushed to the GitHub repository. Jupiter Notebook and Google Collab will also be used at different stages in the project. 

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

### ETL

### ERD

This flow chart outlines the intended databases and connections that will be utilized.

![Group_8_Poject_ER_Design](https://user-images.githubusercontent.com/92001105/159188875-b8dc6516-4a71-48b5-94a7-346540be346c.png)

### Database Storage

### Visual Display

The dashboard was created utilizing Tableau Public and an Excel file was used with various data inputs and the output from the Machine Learning model that predicts the future Housing Price.

![image](https://user-images.githubusercontent.com/92001105/160496578-b92b0dc0-7c87-4595-9b91-1919f64aa464.png)

### Machine Learning Model

This flow chart outlines the intended plan to create the machine learning model.  

![Machine Learning Model Flow Chart](https://github.com/tharren12/Group_8_Final_Project/blob/500ded078ba0439e23801722cb7707570c39123b/ML_flow_chart.png)

Work has continued to progress on the Machine Learning model with the following work now completed preliminarily - work will continue through this week to refine and tune the model.

Data pre-processing: the orignal data set contained data from the entirety of the US but for the purposes of establishing a functional model the data was filtered to just one region in California.  The zip code data was converted to string.  Columns and rows with null values were dropped as they only represented a small portion of the overall dataset.  The dataset had to be transposed so that the time series was in the rows instead of the columns.  The RegionName was then set as the index for the columns.  

Feature Engineering: While the data set did contain data other than time series pricing we determined that none of the additional data added anything that would enchance the models performance so all features except the time series data were dropped.

Training/Testing: We wanted as much data as possible for the model to train on so 93% of the data was used for training and just 7% for testing.  Becuase it's a time series that we are working with we used the oldest 93% to train and reserved the newest observations for testing.  A random split would not make sense in this case since we are looking for trends with the progression of time.  

Model: We have created an LSTM RNN model.  We felt this best suited our data since it's a time series and we have data over a substantial period of time for a substantial number of locations.  Though we expect this is the model that will work the best we are comparing to linear regression and other model types before making a final decision.  Curerntly the LSTM model does represent the overall trend of prices well but currently overestimates slightly so we will continue to refine.  

