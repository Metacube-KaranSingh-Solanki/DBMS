#3.1 Shoppers info with count of orders in last 30 days
SELECT u.id, u.name, COUNT(o.id) "Orders in last 30 days" 
FROM user u JOIN user_order o
ON u.id = o.user_id
WHERE DATEDIFF(CURRENT_DATE(), o.date) <= 30 AND role = "Shopper"
GROUP BY u.id;


#3.2 Top 2 Shoppers who generated maximum revenue in last 30 days
SELECT o.user_id, u.name, SUM(o.amount) AS "Revenue generated"
FROM user u JOIN user_order o
ON u.id = o.user_id
WHERE DATEDIFF(CURRENT_DATE(), o.date) <= 30 AND role = "Shopper"
GROUP BY o.user_id
ORDER BY 3 DESC                                                             # ORDER BY 3 means by 3rd column in resulting table
LIMIT 2;


#3.3 Top 4 products ordered the most in the last 60 days
SELECT i.product_id, p.name, COUNT(i.product_id) AS "Times ordered"
FROM user_order o JOIN item i
ON o.id = i.order_id
JOIN product p
ON i.product_id = p.id
WHERE DATEDIFF(CURRENT_DATE(), o.date) <= 60
GROUP BY i.product_id
ORDER BY 3 DESC                                                             # ORDER BY 3 means by 3rd column in resulting table
LIMIT 4;


#3.4 Monthly revenue for last 3 months
SELECT DATE_FORMAT(date, '%M') AS "Month", SUM(amount) AS "Revenue"         # %M: Month name
FROM user_order
GROUP BY 1                         
ORDER BY DATE_FORMAT(date, '%c') DESC                                       # %c: Numeric month number
LIMIT 3;


#3.5 Mark products inactive which are not ordered in last 15 days
ALTER TABLE product ADD status ENUM ('Active', 'Inactive') DEFAULT 'Active';

UPDATE product
SET status = 'Inactive'
WHERE id NOT IN(
    SELECT DISTINCT i.product_id
    FROM item i
    JOIN user_order o
    ON o.id = i.order_id
    WHERE DATEDIFF(CURDATE(), o.date) <= 90
);

SELECT id, name, status from product;


#3.6 Search products by category keyword
SELECT c.name, pc.product_id, p.name
FROM product_category pc JOIN category c
ON c.id = pc.category_id
JOIN product p
ON pc.product_id = p.id
WHERE c.name LIKE "Smartphones";


#3.7 Display top 2 Items which were cancelled most.
SELECT DISTINCT p.name
FROM product p
JOIN item i
ON i.product_id = p.id
WHERE i.status = 'Cancelled'
LIMIT 2;