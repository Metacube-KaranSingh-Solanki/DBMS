/*  Why indexing is needed ?
    Having the right indexes on tables are critical to making the queries optimized, specially when the data grows. 
    Not having the needed indexes will typically result in high CPU usage in the database server, slow response times, 
    and ultimately poor performance of the application.
*/

/*  1. Index on user_order table
    This table have two fields that might be appropriate for indexing: date and user_id according to requirements.
    We required the date field more often so defining index on date.
*/

ALTER TABLE user_order ADD INDEX order_date_index (date);

/*  2. Index on product table
    This table have two fields that might be appropriate for indexing: name and stock according to requirements.
    We required the name field more often defining index on name.
*/

ALTER TABLE product ADD INDEX product_name_index (name);

/*  3. Index on category table
    This table have one appropriate column for indexing: name.
    Defining index on name.
*/

ALTER TABLE category ADD INDEX category_name_index (name);
