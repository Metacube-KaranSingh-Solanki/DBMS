USE storefront;

INSERT INTO user(name, contact, role) VALUES("John", "12345", "Shopper");
INSERT INTO user(name, contact, role) VALUES("Doe", "13415", "Shopper");
INSERT INTO user(name, contact, role) VALUES("Alice", "54321", "Administrator");
INSERT INTO user(name, contact, role) VALUES("Frank", "12345", "Shopper");
INSERT INTO user(name, contact, role) VALUES("Marrie", "55555", "Administrator");
INSERT INTO user(name, contact, role) VALUES("Harry", "12121", "Shopper");
INSERT INTO user(name, contact, role) VALUES("Hermoine", "78787", "Shopper");


INSERT INTO category(name, description, parent_id) VALUES("Electronics", "Electronic items", NULL);
INSERT INTO category(name, description, parent_id) VALUES("Mobiles", "Mobiles", 1);
INSERT INTO category(name, description, parent_id) VALUES("Computers", "Computers, Laptops and related items", 1);
INSERT INTO category(name, description, parent_id) VALUES("Smartphones", "Smartphones", 2);


INSERT INTO product(name, description, price, stock, category_id) VALUES ("TV", "Television", 15000, 5, 1);
INSERT INTO product(name, description, price, stock, category_id) VALUES ("Samsung 101", "Samsung mobile", 10000, 10, 4);
INSERT INTO product(name, description, price, stock, category_id) VALUES ("Dell Lattitude", NULL, 65000, 3, 3);
INSERT INTO product(name, description, price, stock, category_id) VALUES ("Realme XT", "Realme smartphone", 14000, 6, 4);
INSERT INTO product(name, description, price, stock, category_id) VALUES ("LG 786", "Washing Machine by LG", 8000, 10, 1);
INSERT INTO product(name, description, price, stock, category_id) VALUES ("Nokia 101", "Keypad phone by Nokia", 5000, 15, 2);
INSERT INTO product(name, description, price, stock, category_id) VALUES ("Nokia 99", "Keypad phone by Nokia", 4000, 12, 2);


INSERT INTO image VALUES (1, "https://drive.google.com/tv");
INSERT INTO image VALUES (2, "https://drive.google.com/samsung");
INSERT INTO image VALUES (3, "https://drive.google.com/dell_lattitude_1");
INSERT INTO image VALUES (3, "https://drive.google.com/dell_lattitude_2");
INSERT INTO image VALUES (4, "https://drive.google.com/realme_xt_1");
INSERT INTO image VALUES (4, "https://drive.google.com/realme_xt_2");
INSERT INTO image VALUES (5, "https://drive.google.com/lg_786_1");
INSERT INTO image VALUES (5, "https://drive.google.com/lg_786_1");
INSERT INTO image VALUES (6, "https://drive.google.com/nokia_101");


INSERT INTO address(pin, city, state, user_id) VALUES(342001, "Jodhpur", "Rajasthan", 1);
INSERT INTO address(pin, city, state, user_id) VALUES(302023, "Jaipur", "Rajasthan", 2);
INSERT INTO address(pin, city, state, user_id) VALUES(123456, "Agra", "UP", 3);
INSERT INTO address(pin, city, state, user_id) VALUES(654321, "Banglore", "Telangana", 4);
INSERT INTO address(pin, city, state, user_id) VALUES(998877, "Kolkata", "West Bengal", 5);


INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-06-15', 25000, 1, 1);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-06-20', 70000, 2, 6);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-06-22', 49000, 4, 4);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-06-25', 15000, 1, 6);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-06-25', 10000, 2, 2);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-07-08', 65000, 2, 2);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-07-12', 14000, 2, 2);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-07-15', 8000, 1, 1);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-07-15', 5000, 4, 4);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-07-26', 4000, 4, 4);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-08-03', 9000, 1, 1);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-08-08', 13000, 2, 2);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-08-08', 80000, 1, 1);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-08-09', 19000, 1, 1);
INSERT INTO user_order(date, amount, address_id, user_id) VALUES('2021-08-10', 27000, 4, 4);


INSERT INTO items(order_id, product_id, quantity, status) VALUES(1, 1, 1, "Not Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(1, 2, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(2, 3, 1, "Not Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(2, 6, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(3, 4, 2, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(3, 5, 2, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(3, 6, 1, "Cancelled");

INSERT INTO items(order_id, product_id, quantity, status) VALUES(4, 1, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(5, 2, 1, "NotShipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(6, 3, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(7, 4, 1, "Not Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(8, 5, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(9, 6, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(10, 7, 1, "Shipped");

INSERT INTO items(order_id, product_id, quantity, status) VALUES(11, 6, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(11, 7, 1, "Shipped");

INSERT INTO items(order_id, product_id, quantity, status) VALUES(12, 5, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(12, 6, 1, "Shipped");

INSERT INTO items(order_id, product_id, quantity, status) VALUES(13, 2, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(13, 3, 1, "Not Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(13, 7, 1, "Shipped");

INSERT INTO items(order_id, product_id, quantity, status) VALUES(14, 3, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(14, 5, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(14, 6, 1, "Not Shipped");

INSERT INTO items(order_id, product_id, quantity, status) VALUES(15, 4, 1, "Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(15, 5, 1, "Not Shipped");
INSERT INTO items(order_id, product_id, quantity, status) VALUES(14, 6, 1, "Not Shipped");
