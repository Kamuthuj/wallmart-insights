-- unique customer types
SELECT DISTINCT(customer_type)
FROM sales

--  payment methods and their count
SELECT payment_method,
       COUNT(payment_method) AS distinct_payment_methods
FROM sales
GROUP BY payment_method
ORDER BY distinct_payment_methods DESC;

-- What is the most common customer type
SELECT customer_type,
	   COUNT(customer_type) AS total_customer
FROM sales
GROUP BY customer_type
ORDER BY total_customer

-- Gender of most customers
SELECT gender,
       COUNT(gender) AS total
FROM sales
GROUP BY gender
ORDER BY total

-- Gender distribution per branch
SELECT branch,
       gender,
       COUNT(gender) AS branch_gender
FROM sales
GROUP BY branch, gender
ORDER BY branch_gender DESC

-- Time of the day customers give most ratings
SELECT time_of_day,
	
        AVG(rating) AS avg_rating
FROM sales
GROUP BY time_of_day
ORDER BY avg_rating DESC


-- time of the day that customers give most ratings per branch
SELECT time_of_day,
        branch,
	  AVG(rating) AS avg_rating
FROM sales
GROUP BY time_of_day,branch
ORDER BY avg_rating DESC

-- day of the week has the best average ratings
SELECT  day_name,
	  AVG(rating) AS avg_rating
FROM sales
GROUP BY day_name
ORDER BY avg_rating DESC

-- day of the week that has best average ratings per branch
SELECT  day_name,
        branch,
	  AVG(rating) AS avg_rating
FROM sales
WHERE branch = 'A'
GROUP BY day_name,branch
ORDER BY avg_rating DESC












