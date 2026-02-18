-- Q6) Top 10 stores by total sales
SELECT Store,
	sum(Weekly_Sales) as total_sales
From Walmart_clean
Group by Store
Order by total_sales Desc
Limit 10;