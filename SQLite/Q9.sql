-- Q9) Holiday lift overall (avg holiday / avg non-holiday - 1)
with h as (
	SELECT Holiday_Flag, avg(Weekly_Sales) as avg_sales
	FROM Walmart_clean
	GROUP by Holiday_Flag
	)
SELECT (SELECT avg_sales FROM h WHERE Holiday_Flag = 'True') * 1.0
       / (SELECT avg_sales FROM h WHERE Holiday_Flag = 'False') - 1 AS holiday_lift;
