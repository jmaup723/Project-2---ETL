_Description of processes / dataset_

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



