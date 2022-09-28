# ETL Project

This Project aims to create a relational databse using postgres to store data that would be utilised to analyse households in WA suburbs.

Contributors - Bharat Guturi, Caroline Badocha, Dale Munroe

# Project Structure

```
project
|__ .gitignore          # gitignore file
|__ Project 1 PPT - Group6.pdf    # slides for presentation
| 
|__ School Data/        # contains data and notebooks
|   |__ school_data_clean.ipynb         # cleaning notebook that takes in the raw data and outputs cleaned data for analysis
|   |__ school_data_analysis.ipynb     # analysis notebook that contains charts
|   |__ Output          # cleaned data & snippets from jupyter
|   |__ Resources     # raw data
|
|__ Employment_Underemployment/        # contains data and notebooks
|   |__Analysis_Underemployment_Unemployment.ipynb # analysis notebook that contains charts
|   |__ underemployment_data_cleaning.ipynb      # cleaning notebook that takes in the raw data and outputs cleaned data for analysis
|   |__ unemployment_data_cleaning.ipynb      # cleaning notebook that takes in the raw data and outputs cleaned data for analysis
|   |__ Figures          # cleaned data & snippets from jupyter
|   |__ Resources       # raw data
|
|__ Crime Data/        # contains data and notebooks
|   |__ Crime in state.ipynb      # cleaning notebook that takes in the raw data and outputs cleaned data for analysis, includes analysis and charts
|   |__ Output          # cleaned data & snippets from jupyter
|   |__ Resources       # raw data
|
|__ Housing Data Complete/        # contains data and notebooks
|   |__ Housing Data      # cleaning notebook that takes in the raw data and outputs cleaned data for analysis, includes analysis and charts
|   |__Images          # cleaned data & snippets from jupyter
|   |__ Resources       # raw data
```

# Datasets
|No|Source|Link|
|-|-|-|
|1|Australian Bureau of Statistics - Housing|https://www.abs.gov.au/statistics/people/housing/housing-occupancy-and-costs/2019-20|
|2|Australian Curriculum, Assessment and Reporting Authority|https://www.acara.edu.au/contact-us/acara-data-access|
|3|Australian Bureau of Statistics - Crime and Justice|https://www.abs.gov.au/statistics/people/crime-and-justice/recorded-crime-offenders/2020-21#data-download|
|4|Australian Bureau of Statistics - Labour Force|https://www.abs.gov.au/statistics/labour/employment-and-unemployment/labour-force-australia/latest-release#key-statistics|

# Cleaning Process

### Question 1 - Which state is the safest?
The ABS has public data on recorded crime offences available online and updated yearly.
Using this data, we are able to make an accurate assumption of which State would be the safest to live in. 
