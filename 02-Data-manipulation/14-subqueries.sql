SELECT customer_name, product_name 
FROM (SELECT * FROM sales
WHERE volume > 1000) AS base_result; -- one way to do it

CREATE VIEW base_result AS SELECT * FROM sales
WHERE volume > 1000; -- creating temporary table (called 'view' and stored in the database)

SELECT customer_name, product_name
FROM base_result; -- selecritng from temporary table