SELECT c.name, p.price AS price, o.quantity AS qty, o.orders_date AS date, (p.price * o.quantity) AS total
FROM products p
JOIN orders o ON p.product_id = o.product_id
JOIN customers c ON c.customer_id = o.customer_id
WHERE o.orders_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH);