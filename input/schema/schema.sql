CREATE TABLE median_sales_price (
	zip_code INT NOT NULL,
	state_name VARCHAR NOT NULL,
	median_sales_price_2018 INT NOT NULL,
	PRIMARY KEY (zip_code)
);

CREATE TABLE elementary_schools (
	zip_code INT NOT NULL,
	school_name VARCHAR NOT NULL,
	school_rating INT NOT NULL,
	grade_levels INT NOT NUll,
	percent_low_income INT NOT NULL,
	PRIMARY KEY (zip_code),
	FOREIGN KEY (zip_code) REFERENCES median_sales_price (zip_code)	
);

CREATE TABLE middle_schools (
	zip_code INT NOT NULL,
	school_name VARCHAR NOT NULL,
	school_rating INT NOT NULL,
	grade_level INT NOT NULL,
	percent_low_income INT NOT NUll,
	FOREIGN KEY (zip_code) REFERENCES median_sales_price (zip_code),
	PRIMARY KEY (zip_code)
);

CREATE TABLE high_school (
	zip_code INT NOT NULL,
	school VARCHAR NOT NUll,
	school_rating INT NOT NULL,
	grade_level INT NOT NULL,
	percent_low_income INT NOT NULL,
	FOREIGN KEY (zip_code) REFERENCES median_sales_price (zip_code),
	PRIMARY KEY (zip_code)
);