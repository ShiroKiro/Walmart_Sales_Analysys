-- Q5) Peak weeks (all stores aggregated) - top 10 dates
Select Date,
	sum(Weekly_Sales) as total_sales
FROM Walmart_clean
GROUP by Date
Order by total_sales DESC
Limit 10;