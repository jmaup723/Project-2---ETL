REATE TABLE median_sales_price (
	zip_code INT NOT NULL,
	state_name VARCHAR NOT NULL,
	median_sales_price_2018 DECIMAL NOT NULL,
	PRIMARY KEY (zip_code)
);

CREATE TABLE elementary_schools (
	zip_code INT NOT NULL,
	school_name VARCHAR NOT NULL,
	school_rating DECIMAL,
	grade_levels VARCHAR NOT NUll,
	percent_low_income INT,
	PRIMARY KEY (zip_code, school_name)
);

CREATE TABLE middle_schools (
	zip_code INT NOT NULL,
	school_name VARCHAR NOT NULL,
	school_rating DECIMAL,
	grade_level VARCHAR NOT NULL,
	percent_low_income INT,
	PRIMARY KEY (zip_code, school_name)
);

CREATE TABLE high_school (
	zip_code INT NOT NULL,
	school_name VARCHAR NOT NUll,
	school_rating DECIMAL,
	grade_level VARCHAR NOT NULL,
	percent_low_income INT,
	PRIMARY KEY (zip_code, school_name)
);