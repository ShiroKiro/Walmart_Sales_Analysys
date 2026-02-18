-- Q4) Average weekly sales by month (seasonality)
SELECT strftime('%m', Date) as sale_month,
	avg(Weekly_Sales) as average_weekly_sales
FROM Walmart_clean
group by sale_month
order by sale_month;