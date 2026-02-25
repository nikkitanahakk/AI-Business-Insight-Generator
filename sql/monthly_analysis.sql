-- Monthly Business Performance Analysis

-- Assumed table: business_data
-- Columns: date, revenue, expenses, profit, orders

SELECT
    DATE_TRUNC('month', date) AS month,
    SUM(revenue) AS total_revenue,
    SUM(expenses) AS total_expenses,
    SUM(profit) AS total_profit,
    SUM(orders) AS total_orders
FROM business_data
GROUP BY month
ORDER BY month;
