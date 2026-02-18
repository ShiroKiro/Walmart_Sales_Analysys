-- Q7) Share of sales from top 10 stores (concentration)
WITH store_totals AS (
  SELECT Store, SUM(Weekly_Sales) AS total_sales
  FROM Walmart_clean
  GROUP BY Store
),
top10_stores AS (
  SELECT total_sales
  FROM store_totals
  ORDER BY total_sales DESC
  LIMIT 10
),
top10 AS (
  SELECT SUM(total_sales) AS top10_sales
  FROM top10_stores
),
all_sales AS (
  SELECT SUM(total_sales) AS all_sales
  FROM store_totals
)
SELECT (SELECT top10_sales FROM top10) * 1.0
       / (SELECT all_sales FROM all_sales) AS top10_share;
