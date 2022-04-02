-- Creating employees table for State_Zhvi_AllHomes
CREATE TABLE State_Zhvi_AllHomes
(StateID INT NOT NULL,
SizeRank INT,
State VARCHAR NOT NULL,
RegionType VARCHAR,
"Jan-10" INT,
"Feb-10" INT,
"Mar-10" INT,
"Apr-10" INT, 
"May-10" INT,
"Jun-10" INT,
"Jul-10" INT,
"Aug-10" INT,
"Sep-10" INT,
"Oct-10" INT,
"Nov-10" INT,
"Dec-10" INT,
"Jan-11" INT,
"Feb-11" INT,
"Mar-11" INT,
"Apr-11" INT, 
"May-11" INT,
"Jun-11" INT,
"Jul-11" INT,
"Aug-11" INT,
"Sep-11" INT,
"Oct-11" INT,
"Nov-11" INT,
"Dec-11" INT,
"Jan-12" INT,
"Feb-12" INT,
"Mar-12" INT,
"Apr-12" INT, 
"May-12" INT,
"Jun-12" INT,
"Jul-12" INT,
"Aug-12" INT,
"Sep-12" INT,
"Oct-12" INT,
"Nov-12" INT,
"Dec-12" INT,
"Jan-13" INT,
"Feb-13" INT,
"Mar-13" INT,
"Apr-13" INT, 
"May-13" INT,
"Jun-13" INT,
"Jul-13" INT,
"Aug-13" INT,
"Sep-13" INT,
"Oct-13" INT,
"Nov-13" INT,
"Dec-13" INT,
"Jan-14" INT,
"Feb-14" INT,
"Mar-14" INT,
"Apr-14" INT, 
"May-14" INT,
"Jun-14" INT,
"Jul-14" INT,
"Aug-14" INT,
"Sep-14" INT,
"Oct-14" INT,
"Nov-14" INT,
"Dec-14" INT,
"Jan-15" INT,
"Feb-15" INT,
"Mar-15" INT,
"Apr-15" INT, 
"May-15" INT,
"Jun-15" INT,
"Jul-15" INT,
"Aug-15" INT,
"Sep-15" INT,
"Oct-15" INT,
"Nov-15" INT,
"Dec-15" INT,
"Jan-16" INT,
"Feb-16" INT,
"Mar-16" INT,
"Apr-16" INT, 
"May-16" INT,
"Jun-16" INT,
"Jul-16" INT,
"Aug-16" INT,
"Sep-16" INT,
"Oct-16" INT,
"Nov-16" INT,
"Dec-16" INT,
"Jan-17" INT,
"Feb-17" INT,
"Mar-17" INT,
"Apr-17" INT, 
"May-17" INT,
"Jun-17" INT,
"Jul-17" INT,
"Aug-17" INT,
"Sep-17" INT,
"Oct-17" INT,
"Nov-17" INT,
"Dec-17" INT,
"Jan-18" INT,
"Feb-18" INT,
"Mar-18" INT,
"Apr-18" INT, 
"May-18" INT,
"Jun-18" INT,
"Jul-18" INT,
"Aug-18" INT,
"Sep-18" INT,
"Oct-18" INT,
"Nov-18" INT,
"Dec-18" INT,
"Jan-19" INT,
"Feb-19" INT,
"Mar-19" INT,
"Apr-19" INT, 
"May-19" INT,
"Jun-19" INT,
"Jul-19" INT,
"Aug-19" INT,
"Sep-19" INT,
"Oct-19" INT,
"Nov-19" INT,
"Dec-19" INT,
"Jan-20" INT,
"Feb-20" INT,
"Mar-20" INT,
 PRIMARY KEY (StateID)
);


-- Creating employees table for City_Zhvi_AllHomes
CREATE TABLE City_Zhvi_AllHomes
(CityID INT,
SizeRank INT,
City VARCHAR,
RegionType VARCHAR,
State VARCHAR,
CountyName VARCHAR,
"Jan-10" INT,
"Feb-10" INT,
"Mar-10" INT,
"Apr-10" INT, 
"May-10" INT,
"Jun-10" INT,
"Jul-10" INT,
"Aug-10" INT,
"Sep-10" INT,
"Oct-10" INT,
"Nov-10" INT,
"Dec-10" INT,
"Jan-11" INT,
"Feb-11" INT,
"Mar-11" INT,
"Apr-11" INT, 
"May-11" INT,
"Jun-11" INT,
"Jul-11" INT,
"Aug-11" INT,
"Sep-11" INT,
"Oct-11" INT,
"Nov-11" INT,
"Dec-11" INT,
"Jan-12" INT,
"Feb-12" INT,
"Mar-12" INT,
"Apr-12" INT, 
"May-12" INT,
"Jun-12" INT,
"Jul-12" INT,
"Aug-12" INT,
"Sep-12" INT,
"Oct-12" INT,
"Nov-12" INT,
"Dec-12" INT,
"Jan-13" INT,
"Feb-13" INT,
"Mar-13" INT,
"Apr-13" INT, 
"May-13" INT,
"Jun-13" INT,
"Jul-13" INT,
"Aug-13" INT,
"Sep-13" INT,
"Oct-13" INT,
"Nov-13" INT,
"Dec-13" INT,
"Jan-14" INT,
"Feb-14" INT,
"Mar-14" INT,
"Apr-14" INT, 
"May-14" INT,
"Jun-14" INT,
"Jul-14" INT,
"Aug-14" INT,
"Sep-14" INT,
"Oct-14" INT,
"Nov-14" INT,
"Dec-14" INT,
"Jan-15" INT,
"Feb-15" INT,
"Mar-15" INT,
"Apr-15" INT, 
"May-15" INT,
"Jun-15" INT,
"Jul-15" INT,
"Aug-15" INT,
"Sep-15" INT,
"Oct-15" INT,
"Nov-15" INT,
"Dec-15" INT,
"Jan-16" INT,
"Feb-16" INT,
"Mar-16" INT,
"Apr-16" INT, 
"May-16" INT,
"Jun-16" INT,
"Jul-16" INT,
"Aug-16" INT,
"Sep-16" INT,
"Oct-16" INT,
"Nov-16" INT,
"Dec-16" INT,
"Jan-17" INT,
"Feb-17" INT,
"Mar-17" INT,
"Apr-17" INT, 
"May-17" INT,
"Jun-17" INT,
"Jul-17" INT,
"Aug-17" INT,
"Sep-17" INT,
"Oct-17" INT,
"Nov-17" INT,
"Dec-17" INT,
"Jan-18" INT,
"Feb-18" INT,
"Mar-18" INT,
"Apr-18" INT, 
"May-18" INT,
"Jun-18" INT,
"Jul-18" INT,
"Aug-18" INT,
"Sep-18" INT,
"Oct-18" INT,
"Nov-18" INT,
"Dec-18" INT,
"Jan-19" INT,
"Feb-19" INT,
"Mar-19" INT,
"Apr-19" INT, 
"May-19" INT,
"Jun-19" INT,
"Jul-19" INT,
"Aug-19" INT,
"Sep-19" INT,
"Oct-19" INT,
"Nov-19" INT,
"Dec-19" INT,
"Jan-20" INT,
"Feb-20" INT,
"Mar-20" INT,
PRIMARY KEY (CityID)
);



--Creating employees table for Top_50_city_data
CREATE TABLE Top_50_city_data
(Pop_Rank INT, 
City VARCHAR,
State VARCHAR,
Pop_2020 INT,
Pop_2010 INT,
Pop_2000 INT,
Pop_1990 INT,
Pop_Growth DECIMAL,
UE_2015	DECIMAL,
UE_2016	DECIMAL,
UE_2017	DECIMAL,
UE_2018	DECIMAL,
UE_2019	DECIMAL,
Industry_Sector	VARCHAR,
Percent_Workforce DECIMAL,
Percent_vs_National DECIMAL,
"Quality of Life" DECIMAL,
Education DECIMAL,
Safety DECIMAL,
"Purchasing Power" DECIMAL,
"Health Care" DECIMAL,
"Cost of Living" DECIMAL,
"Property Price to Income Ratio" DECIMAL,
"Avg Rent 1BR" DECIMAL,
"Avg Mthly Net Income" DECIMAL,
"Rent to Income Ratio" DECIMAL,
"Rent to Income Ratio over 25%" VARCHAR,
"Avg Adj Annual Per Capita Personal Income" INT,
lat DECIMAL,
lng DECIMAL,
PRIMARY KEY (City)
);

--Creating new table for prediction output
CREATE TABLE random_forest_deliverable_2_predictions(
	Index INT, 
	"0" DECIMAL(9,2)
);
