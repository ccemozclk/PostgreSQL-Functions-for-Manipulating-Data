-- 1. Calculate days between order and shipped date
SELECT order_id, order_date, shipped_date,
       shipped_date - order_date AS delay_days
FROM orders
WHERE shipped_date IS NOT NULL;

-- 2. Orders per month using DATE_TRUNC
SELECT DATE_TRUNC('month', order_date) AS order_month, COUNT(*) AS total_orders
FROM orders
GROUP BY 1
ORDER BY 1;

-- 3. Average shipping delay in days
SELECT AVG(shipped_date - order_date) AS avg_shipping_delay
FROM orders
WHERE shipped_date IS NOT NULL;

-- 4. Show customers with late shipments (> 7 days)
SELECT customer_id, order_id, shipped_date - order_date AS delay
FROM orders
WHERE shipped_date - order_date > 7;

-- 5. Calculate estimated delivery date (add INTERVAL to shipped date)
SELECT order_id, shipped_date, shipped_date + INTERVAL '5 days' AS expected_delivery
FROM orders
WHERE shipped_date IS NOT NULL;
