USE codeup_test_db;
DROP TABLE IF EXISTS pizzas;
CREATE TABLE pizzas(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR (100) NOT NULL,
phone_number VARCHAR (30),
email VARCHAR (50),
address VARCHAR (100),
pizza_size VARCHAR (30),
total_cost DECIMAL (10, 2),
description VARCHAR (100),
isDelivered TINYINT (1),
created_at datetime,
updated_at datetime,
PRIMARY KEY (id)
);