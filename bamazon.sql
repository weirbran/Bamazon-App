CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INTEGER (2) NOT NULL AUTO_INCREMENT,
    product_name VARCHAR (50) NOT NULL, 
    price FLOAT (4,2) NOT NULL, 
    stock_quantity INTEGER (3) NOT NULL,
    PRIMARY KEY (item_id)
);

ALTER TABLE products ADD COLUMN department_name VARCHAR (50) NOT NULL AFTER product_name;

ALTER TABLE products MODIFY price FLOAT (5,2) NOT NULL;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Lysol Disinfecting Wipes", "Cleaning & Facilities", 8.79, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Kleenex Cottonelle Toilet Paper", "Cleaning & Facilities", 14.32, 14);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Wastebaskets", "Cleaning & Facilities", 5.79, 11);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Febreze Air Effects Air Freshener", "Cleaning & Facilities", 3.66, 77);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Werther's Original Hard Candies (900g)", "Coffee, Water & Snacks", 9.29, 15);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Nestle Pure Life Water Bottles (35 pack)", "Coffee, Water & Snacks", 8.99, 42);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("McCafe Premium Roast Coffee (950g)", "Coffee, Water & Snacks", 19.29, 15);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Pringles Original Flavour (160g)", "Coffee, Water & Snacks", 3.15, 6);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Listerine Cool Mint Mouthwash", "Health, Beauty & Travel", 9.99, 36);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Conair Touch-Control Lighted Mirror", "Health, Beauty & Travel", 86.39, 7);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bugatti 3-Piece Hard Case Luggage Set", "Health, Beauty & Travel", 462.56, 29);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Fitbit Blaze Fitness Tracker", "Health, Beauty & Travel", 199.95, 40);	




