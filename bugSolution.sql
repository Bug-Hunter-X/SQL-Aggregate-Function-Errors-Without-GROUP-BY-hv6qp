```sql
-- Correct use of aggregate functions with GROUP BY
SELECT customer_id, COUNT(*) AS total_orders, AVG(order_price) AS avg_price
FROM orders
GROUP BY customer_id; 
-- Additional example with HAVING clause
SELECT customer_id, COUNT(*) AS total_orders, AVG(order_price) AS avg_price
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 2; -- Filter out customers with more than 2 orders
```