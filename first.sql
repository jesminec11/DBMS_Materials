USE sql_store;

SELECT *
FROM customers;

SELECT *
FROM customers
WHERE customer_id=1;

SELECT *
FROM customers
ORDER BY first_name;

SELECT 
	first_name, 
    last_name, 
    points, 
    (points + 10) * 100 AS "discount_factor"
FROM customers;

SELECT DISTINCT(state)
FROM customers;

SELECT
	name,
    unit_price,
    unit_price * 1.1 AS "new price"
FROM products;

SELECT * 
FROM customers
WHERE points > 3000;

SELECT * 
FROM customers
WHERE state = "VA";

SELECT * 
FROM customers
WHERE state != "VA";

SELECT * 
FROM customers
WHERE state <> "VA";

SELECT * 
FROM customers
WHERE birth_date > "1990-01-01";

SELECT *
FROM orders
WHERE order_date >= "2019-01-01";

SELECT * 
FROM customers
WHERE birth_date > "1990-01-01" AND points > 1000;

SELECT * 
FROM customers
WHERE birth_date > "1990-01-01" OR points > 1000;

SELECT * 
FROM customers
WHERE birth_date > "1990-01-01" OR 
	  (points > 1000 AND state = "VA");
      
SELECT *
FROM customers
WHERE NOT (birth_date > "1990-01-01" OR points > 1000);

SELECT *
FROM order_items
WHERE order_id = 6 AND (unit_price * quantity) > 30;

SELECT *
FROM customers
WHERE state IN ("VA", "GA", "FL");

SELECT *
FROM customers
WHERE state NOT IN ("VA", "GA", "FL");

SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);

SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;

SELECT *
FROM customers
WHERE birth_date BETWEEN "1990-01-01" AND "2000-01-01";

SELECT *
FROM customers
WHERE last_name LIKE "B%";

SELECT *
FROM customers
WHERE last_name LIKE "%b%";

SELECT *
FROM customers
WHERE last_name LIKE "%y";

SELECT *
FROM customers
WHERE last_name LIKE "_y";

SELECT *
FROM customers
WHERE last_name LIKE "b____y";

SELECT *
FROM customers
WHERE address LIKE "%trail%" OR address LIKE "%avenue%";

SELECT *
FROM customers
WHERE phone LIKE "%9";