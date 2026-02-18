# Walmart Sales — SQL Mini Project (SQLite)

## Goal
Answer core business questions about Walmart weekly sales using SQL:
- seasonality (monthly patterns)
- peak weeks
- store contribution (top stores and concentration)
- holiday vs non-holiday impact

## Setup (DB Browser for SQLite)
1) Create database: `data/walmart.db`
2) Import `Walmart_clean.csv` as table `walmart_sales`
3) (Optional) create indexes:
   - idx_date(Date), idx_store(Store), idx_holiday(Holiday_Flag)
4) Run queries from `sql/queries.sql`

## Notes on interpretation
- Comparisons by store/holiday can be noisy for small sample sizes. For holiday lift per store, use minimum-week thresholds.
- Peak-week analysis aggregates all stores by date to find the highest total sales weeks.
