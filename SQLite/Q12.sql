-- Q12) Average sales by store and year (trend by store)
SELECT Store,
	strftime('%Y', Date) as sale_year,
	avg(Weekly_sales) as average_weekly_sales
FROM Walmart_clean
GROUP by Store, sale_year
Order by Store, sale_year;