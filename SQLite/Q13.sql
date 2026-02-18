-- Q13) Data quality: rows with missing/zero/negative sales
SELECT
  SUM(CASE WHEN Weekly_Sales IS NULL THEN 1 ELSE 0 END) AS null_sales,
  SUM(CASE WHEN Weekly_Sales = 0 THEN 1 ELSE 0 END) AS zero_sales,
  SUM(CASE WHEN Weekly_Sales < 0 THEN 1 ELSE 0 END) AS negative_sales
FROM Walmart_clean;
