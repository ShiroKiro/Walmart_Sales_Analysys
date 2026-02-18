-- Q1) Rows + date range
SELECT Count(*) as rows,
	min(Date) as min_date,
	max(Date) as max_date
From Walmart_clean