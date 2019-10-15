CREATE DATABASE ...
CREATE TABLE ...
create table elementary_schools (
	school_name VARCHAR NOT NULL,
	school_rating INT NOT NULL,
	grade_levels INT NOT NUll,
	percent_low_income INT NOT NULL,
	foreign key (zip_code) refernces median_sales_price (zip_code),
	primary key (zip_code)
);

Create Table middle_schools (
	school_name VARCHAR NOT NULL,
	school_rating INT NOT NULL,
	grade_level INT NOT NULL,
	percent_low_income INT NOT NUll,
	foreign key (zip_code) refernces median_sales_price (zip_code),
	primary key (zip_code)
);

Create Table high_school (
	school Varchar NOT NUll,
	school_rating INt NOT NULL,
	grade_level INT NOT NULL,
	percent_low_income INT NOT NULL,
	foreign key (zip_code) refernces median_sales_price (zip_code),
	primary key (zip_code)
);

Create Table median_sales_price (
	zip_code INT NOT NULL,
	state_name VARCHAR NOT NULL,
	2018_median_sales_price INT NOT NULL
);