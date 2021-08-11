DROP DATABASE storefront;
CREATE DATABASE storefront;
USE storefront;

# 1.1 Creating all tables
CREATE TABLE user (
    id INT auto_increment PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    contact VARCHAR(10),
    role VARCHAR(15) NOT NULL CHECK (role IN ('Shopper', 'Administrator'))
);

CREATE TABLE category (
    id INT auto_increment PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    description VARCHAR(80),
    parent_id int,
    FOREIGN KEY(parent_id) REFERENCES category(id) ON DELETE CASCADE
);

CREATE TABLE product (
    id INT auto_increment PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    description VARCHAR(80),
    price int NOT NULL DEFAULT 0,
    stock int NOT NULL DEFAULT 0,
    category_id INT NOT NULL,
    FOREIGN KEY(category_id) REFERENCES category(id) ON DELETE CASCADE
);

CREATE TABLE image (
    product_id INT NOT NULL,
    url VARCHAR(100) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE
);

CREATE TABLE address (
    id INT PRIMARY KEY auto_increment,
    user_id INT NOT NULL,
    pin varchar(6) NOT NULL,
    city VARCHAR(15) NOT NULL,
    state VARCHAR(15) NOT NULL,
    FOREIGN KEY(user_id) REFERENCES user(id) ON DELETE CASCADE
);

CREATE TABLE user_order (
    id INT PRIMARY KEY auto_increment,
    user_id INT NOT NULL,
    date DATE NOT NULL,
    amount DOUBLE NOT NULL,
    address_id INT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES user(id) ON DELETE CASCADE,
    FOREIGN KEY(address_id) REFERENCES address(id) ON DELETE CASCADE
);

CREATE TABLE items (
    id INT PRIMARY KEY auto_increment,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    status VARCHAR(15) CHECK (status IN ('Shipped', 'Cancelled', 'Returned', 'Not Shipped')),
    quantity INT NOT NULL,
    FOREIGN KEY(order_id) REFERENCES user_order(id) ON DELETE CASCADE,
    FOREIGN KEY(product_id) REFERENCES product(id) ON DELETE CASCADE
);

# 1.2 Display all table names
SHOW tables;

# 1.3 Delete product table (To drop a table which is referenced to another table, we've to drop them first)
#     And create again
DROP TABLE image;
DROP TABLE items;
DROP TABLE product;

CREATE TABLE product (
    id INT auto_increment PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    description VARCHAR(80),
    price int NOT NULL DEFAULT 0,
    stock int NOT NULL DEFAULT 0,
    category_id INT NOT NULL,
    FOREIGN KEY(category_id) REFERENCES category(id) ON DELETE CASCADE
);

CREATE TABLE image (
    product_id INT NOT NULL,
    url VARCHAR(100) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE
);

CREATE TABLE items (
    id INT PRIMARY KEY auto_increment,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    status VARCHAR(15) CHECK (status IN ('Shipped', 'Cancelled', 'Returned', 'Not Shipped')),
    quantity INT NOT NULL,
    FOREIGN KEY(order_id) REFERENCES user_order(id) ON DELETE CASCADE,
    FOREIGN KEY(product_id) REFERENCES product(id) ON DELETE CASCADE
);
