-- Active: 1699344612549@@127.0.0.1@3306@retail_online
SELECT c.name, p.price AS price, o.quantity AS qty, o.orders_date AS date, ROUND(SUM(p.price * o.quantity)) AS total_transaction,
ROUND(AVG(p.price)) as average
FROM products p
JOIN orders o ON p.product_id = o.product_id
JOIN customers c ON c.customer_id = o.customer_id
WHERE o.orders_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)
GROUP BY c.name, price, qty, date;