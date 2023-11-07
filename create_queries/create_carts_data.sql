INSERT INTO carts (product_id, customer_id, quantity) VALUES 
('1', '31', '2'),
('1', '23', '4'),
('2', '31', '1'),
('3', '31', '3'),
('2', '27', '2'),
('4', '29', '5'),
('5', '23', '2'),
('3', '25', '4'),
('4', '23', '3'),
('6', '29', '2');


DESC carts;
SELECT * FROM carts;
SELECT * FROM products;
DELETE FROM `carts` WHERE `cart_id` IN (12,13,14,15,16,17,18,19,20,21)
