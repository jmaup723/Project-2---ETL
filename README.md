## Education-Home Price Analysis ETL Pipeline

This Github repository represents an Extract, Transform, and Load (ETL) pipeline for sentiment analysis of sale price of homes and school scores in Virginia in 2018. Data is sourced from the Great Schools website. Great Schools has an API we scrapped the website instead. After parsing the websites with beautiful soup, we extracted the total number of pages, created an empty list, and iterated through all pages. The desired information was pulled and loaded into the appropriate list. All the lists were then placed into a data frame. From there the transformation pipeline filters, after web scraping Great Schools we filtered the information based upon elementary, middle, and high schools with the data frame of lists that was pulled down from Great Schools. The Zillow.py file extracts the appropriate information with a requests.get command for home sale price by zip code. The transformation pipeline filters the home sale price data into the average median sale price based for each zip code in the state of Virginia. This was done by averaging the monthly sale price for all of 2018 and exporting to a CSV. Next with all data in csv files the load process is performed. This process loads all four .csv files and publishes them into PostgresSQL. Here we queried, joined, and created tables for our data. This allows for modifications to be made to each phase of the pipeline without having to start processing over from scratch.


## Data Sources
* Zillow - Elementary,https://www.greatschools.org/virginia/schools/?st%5B%5D=public_charter&st%5B%5D=public&view=table
* Zillow - Middle, "https://www.greatschools.org/virginia/schools/?gradeLevels%5B%5D=m&st%5B%5D=public_charter&st%5B%5D=public&view=table&page="
* Zillow - High School, "https://www.greatschools.org/virginia/schools/?gradeLevels%5B%5D=h&st%5B%5D=public_charter&st%5B%5D=public&view=table&page="
* Zillow - Home Sales Price, https://www.zillow.com/research/data/
* Generated Analysis

## Pipeline
1. Download data files
     * Sale_Price - School_scores - src/schools_and-home_sales_price_db.py 
    * ...
2. Transformations

Great Schools
   -Loaded files
        1. Stripped percents from low income column data
        2. Replaced question marks with null values for percent income column
        3. store schools
            a. input/elementary_schools.csv
            b. input/middle_schools.csv
            c. input/high_schools.csv
        
 Zillow Median Sales Price       
    -Loaded file
         1. Filter columns (zip_code, state_name, 2018_median_sales_price)
         2. Adveraged median sale price for the months for 2018 for every zip code 
         3. Store median sales price - input/median_sale_data.csv
         
         
3. Load
    * schema - schema/schema.sql
    * data - input
      * Elementary Schools
      * Middle Schools
      * High Schools
      * Median Home Sales Price 2018



