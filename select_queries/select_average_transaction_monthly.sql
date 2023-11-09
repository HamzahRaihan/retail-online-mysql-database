SELECT c.name, p.price AS price, o.quantity AS qty, o.orders_date AS date, ROUND(SUM(p.price * o.quantity)) AS total_transaction,
ROUND(AVG(p.price)) as average
FROM products p
JOIN orders o ON p.product_id = o.product_id
JOIN customers c ON c.customer_id = o.customer_id
WHERE o.orders_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)
GROUP BY c.name, price, qty, date;

SELECT customer_id AS id, customers.name, ROUND(SUM(price)) AS total, ROUND(AVG(price)) AS average FROM orders
JOIN customers ON (customers.id = orders.customer_id)
WHERE MONTH(order_date) = 11
GROUP BY id;