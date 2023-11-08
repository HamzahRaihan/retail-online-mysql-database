SELECT c.category AS category_name, SUM(products.stock) AS product_stock
FROM products
RIGHT JOIN categories c ON c.category_id = products.category_id
GROUP BY category
ORDER BY product_stock DESC;