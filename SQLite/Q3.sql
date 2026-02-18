-- Q3) Total sales by year
SELECT strftime('%Y', Date) as sale_year,
	sum(Weekly_Sales) as total_sales
FROM Walmart_clean
GROUP by sale_year
ORDER by sale_year;