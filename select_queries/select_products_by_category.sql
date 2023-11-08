SELECT products.product_id, products.product_name AS product, categories.category AS category 
FROM products
JOIN categories ON products.category_id = categories.category_id;

SELECT products.product_id, products.product_name AS product, categories.category AS category 
FROM products
JOIN categories ON products.category_id = categories.category_id
WHERE categories.category = 'GPU';

SELECT products.product_id, products.product_name AS product, categories.category AS category 
FROM products
JOIN categories ON products.category_id = categories.category_id
WHERE categories.category = 'CPU';

SELECT products.product_id, products.product_name AS product, categories.category AS category 
FROM products
JOIN categories ON products.category_id = categories.category_id
WHERE categories.category = 'MOTHERBOARD';

SELECT products.product_id, products.product_name AS product, categories.category AS category 
FROM products
JOIN categories ON products.category_id = categories.category_id
WHERE categories.category = 'RAM';