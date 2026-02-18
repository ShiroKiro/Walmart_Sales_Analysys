-- Q15) Top 3 dates per year (peak weeks per year)
WITH d AS (
  SELECT strftime('%Y', Date) AS sale_year,
         Date,
         SUM(Weekly_Sales) AS total_sales
  FROM Walmart_clean
  GROUP BY sale_year, Date
),
r AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY sale_year ORDER BY total_sales DESC) AS rn
  FROM d
)
SELECT sale_year, Date, total_sales
FROM r
WHERE rn <= 3
ORDER BY sale_year, total_sales DESC;