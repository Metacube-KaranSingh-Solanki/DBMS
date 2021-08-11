USE storefront;

#2.1
SELECT id, name, category_id, price FROM product
WHERE stock > 0
ORDER BY id DESC;

#2.2
SELECT p.id, p.name FROM product p LEFT JOIN image i
ON p.id = i.product_id 
WHERE i.url IS NULL;

#2.3
SELECT c.id, c.name, IFNULL(p.name, "Top Category") AS parent_category FROM category c, category p
WHERE p.id = c.parent_id
ORDER BY parent_category, c.name;

#2.4
SELECT id, name FROM category
WHERE id IN 
(SELECT id from category WHERE parent_id IS NOT NULL);

#2.5
SELECT id, name, price, description, category_id FROM product
WHERE category_id IN
(SELECT id from category where name = "Mobiles");

#2.6
SELECT id, name, stock FROM product
WHERE stock < 5;
