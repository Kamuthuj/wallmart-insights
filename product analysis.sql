 -- business analysis
 
--  finding unique cities 
SELECT DISTINCT city
FROM sales

--  finding the city in each branch 
SELECT DISTINCT city,
               branch
FROM sales

-- finding the unique product in the product line
SELECT DISTINCT product_line
FROM sales

-- --most common payment method
SELECT payment_method,
        COUNT(payment_method) as CNT
FROM sales
GROUP BY payment_method
ORDER BY CNT DESC

-- Best selling product
SELECT product_line,
       SUM(quantity) AS total_product_sales
FROM sales
GROUP BY product_line
ORDER BY total_product_sales DESC

-- Total revenue by month
SELECT month_name,
       SUM(unit_price * quantity) AS total_revenue
FROM sales
GROUP BY month_name
ORDER BY total_revenue DESC 

-- Month with the highest cost of goods sold (cogs)
SELECT month_name,
       SUM(cogs) AS total_cogs
FROM sales
GROUP BY month_name
ORDER BY total_cogs DESC

-- Product line with the largest revenue.
SELECT product_line,
       SUM(unit_price * quantity) AS total_product_revenue
FROM sales
GROUP BY product_line
ORDER BY total_product_revenue DESC

-- City with the largest revenue.

SELECT city,
       branch,
       SUM(unit_price*quantity) AS TR
FROM sales
GROUP BY city,branch
ORDER BY TR DESC 









