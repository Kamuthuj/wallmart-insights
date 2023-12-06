-- Sales analysis.

-- Number of sales done in each time of day per week
SELECT time_of_day,
       COUNT(*) AS total_sales
FROM sales
WHERE day_name = 'Monday'
GROUP BY time_of_day
ORDER BY total_sales

-- which of the customer type bring more revenue
SELECT customer_type,
	   SUM(unit_price*quantity) AS total_spent
FROM sales
GROUP BY customer_type
ORDER BY total_spent DESC

-- City generating the highest tax
SELECT city,
       AVG(VAT)  AS total_vat
FROM sales
GROUP BY city
ORDER BY total_vat DESC

-- Customer type that pays more in VAT.
SELECT customer_type,
        SUM(VAT) AS total_vat
FROM sales
GROUP BY customer_type
ORDER BY total_vat DESC