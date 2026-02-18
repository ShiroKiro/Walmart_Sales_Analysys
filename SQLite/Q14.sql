-- Q14) Holiday weeks distribution (how many rows are holiday)
SELECT Holiday_Flag,
       COUNT(*) AS rows
FROM Walmart_clean
GROUP BY Holiday_Flag;