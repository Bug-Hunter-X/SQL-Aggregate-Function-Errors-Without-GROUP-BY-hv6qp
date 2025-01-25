```sql
-- Incorrect use of aggregate functions without GROUP BY
SELECT COUNT(*) AS total_orders, AVG(order_price) AS avg_price
FROM orders;
-- Missing GROUP BY clause to correctly calculate aggregates for each customer
SELECT customer_id, COUNT(*) AS total_orders, AVG(order_price) AS avg_price
FROM orders
GROUP BY customer_id; 
```