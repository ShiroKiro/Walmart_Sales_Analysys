-- Q8) Holiday vs non-holiday average and total sales

Select Holiday_Flag,
	Count(*) as rows,
	avg(Weekly_sales) as average_sales,
	sum(Weekly_sales) as total_sales
FROM Walmart_clean
Group by Holiday_Flag;