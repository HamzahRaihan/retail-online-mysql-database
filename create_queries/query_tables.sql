-- create tables
CREATE Table customers(
  customer_id INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  username VARCHAR(35) NOT NULL,
  password VARCHAR(20) NOT NULL,
  address VARCHAR(200) NOT NULL,
  gender ENUM('Men','Woman') NOT NULL,
  phone_numb int(12) NOT NULL
);

CREATE Table categories(
  category_id INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  category VARCHAR(100) NOT NULL
);

CREATE Table products (
  product_id INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  category_id INT(2) NOT NULL,
  product_name VARCHAR(35) NOT NULL,
  price INT(20) NOT NULL,
  sold INT(20),
  stock INT(20),
  FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE Table carts (
  cart_id INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  product_id INT(2) NOT NULL,
  customer_id INT(2) NOT NULL,
  quantity int(10) NOT NULL,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE Table transaction_detail(
 transaction_id INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
 cart_id INT(2) NOT NULL,
 customer_id INT(2) NOT NULL,
 transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY (cart_id) REFERENCES carts(cart_id),
 FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- show tables
DESC customers;
DESC products;
DESC carts;
DESC categories;
DESC transaction_detail;

-- show tables data
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM carts;
SELECT * FROM categories;
SELECT * FROM transaction_detail;

-- delete tables
DROP TABLE customers; 
DROP TABLE categories;
DROP TABLE products;
DROP Table carts;
DROP Table transaction_detail;

