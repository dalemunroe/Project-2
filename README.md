# ETL Project

This Project aims to create a relational databse using postgres to store data that would be utilised to analyse households in WA suburbs.

Contributors - Bharat Guturi, Caroline Badocha, Dale Munroe

# Project Structure

```
project
|__ .gitignore          # gitignore file
|__ clean_abs_data.ipynb      # cleaning notebook that takes in the raw data and outputs cleaned data for analysis
|__ project_2_solar.ipynb      # cleaning notebook that takes in the raw data and outputs cleaned data for analysis
|__ @NAME TO ADD.ipynb
|
|__ Resources/        # contains data downloaded from the datasets below
|
|__ Output/        # contains cleaned data
|   |__income_data.csv # cleaned data from ABS for median income
|   |__solar_metadata_WAonly_df.csv      # cleaned data from Clean Energy Regulator
|   |__
```

# Datasets
|No|Source|Link|
|-|-|-|
|1|Australian Bureau of Statistics - Median Income|https://www.abs.gov.au/census/2021-census-data-release-plans/2021-census-product-release-guide#tablebuilder|
|2|Clean Energy Regulator - Solar Installations |https://www.cleanenergyregulator.gov.au/RET/Forms-and-resources/Postcode-data-for-small-scale-installations|
|3|Kaggle - Perth House Prices |https://www.kaggle.com/datasets/syuzai/perth-house-prices?resource=download|

# Cleaning Process

### ABS Median Data
For this data I have three pieces of data with one of them being across three excels.
