SELECT 'hello world',
    product_name, 
    volume / 1000 AS total_sales,
    date_created,
    customer_name 
FROM sales;