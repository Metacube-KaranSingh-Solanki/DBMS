#3.1
SELECT id, date, amount FROM user_order
ORDER BY date DESC
LIMIT 10;

#3.2
SELECT id, amount FROM user_order
ORDER BY amount DESC
LIMIT 5;

#3.3
SELECT o.id, o.date, i.status FROM user_order o LEFT JOIN items i
ON o.id = i.order_id
WHERE DATEDIFF(CURRENT_DATE(), date) > 10
AND i.status IN ('Not Shipped');

#3.4
SELECT id, name FROM user
WHERE id NOT IN
(SELECT user_id FROM user_order WHERE DATEDIFF(CURRENT_DATE(), date) > 31);

#3.5
SELECT u.id, u.name, o.date FROM user u, user_order o
WHERE o.date IN
(SELECT date FROM user_order WHERE DATEDIFF(CURRENT_DATE(), date) < 15);

#3.6
SELECT p.name, i.status FROM user_order o 
JOIN items i
ON o.id = i.order_id AND i.status = 'Shipped'
JOIN product p
ON p.id = i.product_id
AND o.id = 3;

#3.7
SELECT o.id, o.date, p.name, p.price
FROM user_order o
LEFT JOIN items i
ON o.id = i.order_Id
RIGHT JOIN product p
ON i.product_id = p.id
WHERE p.price BETWEEN 10000 AND 50000;
