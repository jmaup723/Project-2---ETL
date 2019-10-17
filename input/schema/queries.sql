--joins elementary school data with median sales price on zip code
SELECT  elementary_schools.zip_code,
        elementary_schools.school_name,
        elementary_schools.school_rating,
        elementary_schools.grade_levels,
		elementary_schools.percent_low_income,
		median_sales_price.median_sales_price_2018,
		median_sales_price.state_name
        
FROM elementary_schools
    LEFT JOIN median_sales_price
    ON (elementary_schools.zip_code = median_sales_price.zip_code)
ORDER BY median_sales_price.median_sales_price_2018;

--joins high school data with median sales price on zip code
SELECT  high_schools.zip_code,
        high_schools.school_name,
        high_schools.school_rating,
        high_schools.grade_levels,
		high_schools.percent_low_income,
		median_sales_price.median_sales_price_2018,
		median_sales_price.state_name
        
FROM high_schools
    LEFT JOIN median_sales_price
    ON (high_schools.zip_code = median_sales_price.zip_code)
ORDER BY median_sales_price.median_sales_price_2018;


--joins middle school data with median sales price on zip code
SELECT  middle_schools.zip_code,
        middle_schools.school_name,
        middle_schools.school_rating,
        middle_schools.grade_levels,
		middle_schools.percent_low_income,
		median_sales_price.median_sales_price_2018,
		median_sales_price.state_name
        
FROM middle_schools
    LEFT JOIN median_sales_price
    ON (middle_schools.zip_code = median_sales_price.zip_code)
ORDER BY median_sales_price.median_sales_price_2018;