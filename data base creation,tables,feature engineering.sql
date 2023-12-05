CREATE DATABASE IF NOT EXISTS walmartsales;

CREATE TABLE IF NOT EXISTS sales(invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
                           branch VARCHAR(5) NOT NULL,
                           city VARCHAR(30) NOT NULL,
                           customer_type VARCHAR(30) NOT NULL,
                           gender VARCHAR(10) NOT NULL,
                           product_line VARCHAR(100) NOT NULL,
                           unit_price DECIMAL(10,2) NOT NULL,
                           quantity INT NOT NULL,
                           VAT FLOAT(6,4) NOT NULL,
                           total DECIMAL(12,4) NOT NULL,
                           date DATETIME NOT NULL,
                           time TIME NOT NULL,
                           payment_method VARCHAR(15) NOT NULL,
                           cogs DECIMAL(10,2) NOT NULL,
                           gross_margin_pct FLOAT(11,9),
                           gross_income DECIMAL(12,4) NOT NULL,
                           rating FLOAT (2,1)
);
						
						
                        
		
-- Feature engineering.
-- CREATING NEW COLUMN time_of_day to determine what time had most sales.

SELECT 
    time,
    (CASE
        WHEN time BETWEEN '00:00:00' AND '12:00:00' THEN 'morning'
        WHEN time BETWEEN '12:01:00' AND '16:00:00' THEN 'afternoon'
        ELSE 'evening'
    END) AS time_of_date
FROM sales;

ALTER TABLE sales
ADD COLUMN time_of_day VARCHAR(15);

UPDATE sales
set time_of_day = (CASE
        WHEN time BETWEEN '00:00:00' AND '12:00:00' THEN 'morning'
        WHEN time BETWEEN '12:01:00' AND '16:00:00' THEN 'afternoon'
        ELSE 'evening'
    END)
                     

      
							
						   