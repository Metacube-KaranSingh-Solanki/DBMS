#2.1 List of products which fall in more than one categories
SELECT p.id, p.name, COUNT(c.category_id) AS "Count of Categories" 
FROM product p JOIN product_category c
ON p.id = c.product_id
GROUP BY c.product_id
HAVING COUNT(c.category_id) > 1;


#2.2 Count of products as per the price range
SELECT 
CASE 
    WHEN price BETWEEN 1 AND 4999 THEN '1 - 4999'
    WHEN price BETWEEN 5000 AND 14999 THEN '5000 - 14999'
    ELSE 'Above 14999'
END AS "Range in Rs", COUNT(id) AS "Count of Products"
FROM product
GROUP BY 1;                                         # GROUP BY 1 means by 1st column in resulting table


#2.3 Categories with number of products in each category
SELECT c.name, COUNT(cmap.product_id) AS "Number of Products"
FROM product_category cmap JOIN category c
ON c.id = cmap.category_id
GROUP BY cmap.category_id;
