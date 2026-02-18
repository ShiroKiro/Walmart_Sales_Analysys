-- Q11) Bottom 10 stores by holiday lift (largest negative)
WITH t AS (
  SELECT Store, Holiday_Flag,
         COUNT(*) AS weeks,
         AVG(Weekly_Sales) AS avg_sales
  FROM Walmart_clean
  GROUP BY Store, Holiday_Flag
),
p AS (
  SELECT Store,
         MAX(CASE WHEN Holiday_Flag='True' THEN avg_sales END) AS holiday_avg,
         MAX(CASE WHEN Holiday_Flag='False' THEN avg_sales END) AS nonholiday_avg,
         MAX(CASE WHEN Holiday_Flag='True' THEN weeks END) AS holiday_weeks,
         MAX(CASE WHEN Holiday_Flag='False' THEN weeks END) AS nonholiday_weeks
  FROM t
  GROUP BY Store
)
SELECT Store,
       holiday_weeks, nonholiday_weeks,
       (holiday_avg / nonholiday_avg - 1) AS lift
FROM p
WHERE holiday_weeks >= 2 AND nonholiday_weeks >= 10
ORDER BY lift ASC
LIMIT 10;