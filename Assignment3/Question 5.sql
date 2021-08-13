-- 5.1 Create a view displaying the order information (Id, Title, Price, Shopper’s name, Email, Orderdate, Status)
-- with latest ordered items should be displayed first for last 60 days.

DROP VIEW displayDetails;

CREATE VIEW displayDetails AS
(SELECT p.id, p.name AS "Product_Name", p.price, u.name AS "Shopper_Name", u.contact, o.date, i.status
FROM item i
JOIN product p
ON i.product_id = p.id
JOIN user_order o
ON o.id = i.order_id
JOIN user u
ON u.id = o.user_id
WHERE DATEDIFF(CURDATE(), o.date) <= 60
ORDER BY o.date DESC);

#5.2 Use the above view to display the Products(Items) which are in ‘shipped’ state.
SELECT Product_Name as Item FROM displayDetails
WHERE status = 'Shipped';

#5.3 Use the above view to display the top 5 most selling products.
SELECT Product_Name, count(id) as count
FROM displayDetails
GROUP BY id
ORDER BY count DESC
LIMIT 5;
