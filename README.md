# ETL Project

This Project aims to create a relational databse using postgres to store data that would be utilised to analyse households in WA suburbs.

Contributors - Bharat Guturi, Caroline Badocha, Dale Munroe

# Project Structure

```
project
|__ .gitignore          # gitignore file
|__ Project 2.ipynb             # cleaning notebook that takes in the raw data and outputs cleaned data for analysis
|
|__ Resources/        # contains data downloaded from the datasets below
|
|__ Table_creation_scripts/     # contains the scripts for creating SQL tables
|   |__1_Project_2.sql
|   |__2_house_prices.sql
|   |__3_Median_Income.sql
|   |__4_solar_metadata_waonly.sql
|
|__ Output/        # contains cleaned data
|   |__income_data.csv # cleaned data from ABS for median income
|   |__solar_metadata_WAonly_df.csv      # cleaned data from Clean Energy Regulator
|   |__
```

# SQL Database

```
# create connection to postgres
Create .env file with the following details:
          db_UserName: <your database username>
          db_Password: <your database password>

# create tables
Using the script in the Table Creation Scripts folder run the scripts in their numerical order

# input data
Once the data is created then the python scripts can be run to upload the data into SQL
```

# Datasets
|No|Source|Link|
|-|-|-|
|1|Australian Bureau of Statistics - Median Income|https://www.abs.gov.au/census/2021-census-data-release-plans/2021-census-product-release-guide#tablebuilder|
|2|Clean Energy Regulator - Solar Installations |https://www.cleanenergyregulator.gov.au/RET/Forms-and-resources/Postcode-data-for-small-scale-installations|
|3|Kaggle - Perth House Prices |https://www.kaggle.com/datasets/syuzai/perth-house-prices?resource=download|

# Cleaning Process

### ABS Median Data
For this data I have three pieces of data with one of them being across three excels. To clean the data I took the following steps:
* Import csv for the median data points
* Checked the columns of the data and removed columns not associated with income
* Import csv for household income
* Similarly checked the data columns and removed all columns regarding family and non-family households so that only columns relating to household income remains
* Import the three parts of individual income
* Merge the three parts on the Postcode Columns
* Remove all columns that split the age and the person totals so that income by gender remains
* These three dataframes (median income, household income, individual income) are merged on the Postcode Column
* The ABS denotes Postcodes with POA followed by the 4 numbers of a postcode. To ensure that the Postcode can be rleated to other tables, I remove POA.
* Finally, the combined data is exported to a csv with the Postcode as the index.

### Solar Installation Data
For this data I have the data of solar installations by each month for 2021 which was cleaned as below:
* Import csv for the solar installations
* Took out the postcodes into data series
* As the data was in a monthly format, to make it comparable to other datasets being entered, iloc was used to sum the number installations and get an annual figure
* To get the annual rated output in KW iloc was used again to create the third data series
* The three data series were combined to create a dataframe
* Then all non-WA suburbs were filtered out so that the data was comparable to the other datasets
* Data was sorted by post code and the index reset
* The data was then exported into a new csv file

### Perth Housing Data
In the data from Kaggle it had all the sales of houses within Perth and it was cleaned as follows:
* Import csv for the house sales
* From the uploaded dataframe I took all the relevant columns
* Changed the headers to lower case
* The data was then exported into a new csv file.
