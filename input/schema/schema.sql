CREATE TABLE elementary_schools (
	school_name VARCHAR NOT NULL,
	school_rating INT NOT NULL,
	grade_levels INT NOT NUll,
	percent_low_income INT NOT NULL,
	FOREIGN KEY (zip_code) REFERENCES median_sales_price (zip_code),
	PRIMARY KEY (zip_code)
);

CREATE TABLE middle_schools (
	school_name VARCHAR NOT NULL,
	school_rating INT NOT NULL,
	grade_level INT NOT NULL,
	percent_low_income INT NOT NUll,
	FOREIGN KEY (zip_code) REFERENCES median_sales_price (zip_code),
	PRIMARY KEY (zip_code)
);

CREATE TABLE high_school (
	school VARCHAR NOT NUll,
	school_rating INT NOT NULL,
	grade_level INT NOT NULL,
	percent_low_income INT NOT NULL,
	FOREIGN KEY (zip_code) REFERENCES median_sales_price (zip_code),
	PRIMARY KEY (zip_code)
);

CREATE TABLE median_sales_price (
	zip_code INT NOT NULL,
	state_name VARCHAR NOT NULL,
	2018_median_sales_price INT NOT NULL
	PRIMARY KEY (zip_code)
);