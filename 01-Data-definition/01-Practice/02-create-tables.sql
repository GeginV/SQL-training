CREATE TABLE products (
   product_name VARCHAR(200),
   price NUMERIC(10,2), --8.99 or 125984.99
   description TEXT,
   amount INT,
   product_image TEXT 
);

INSERT INTO products (
    product_name, 
    price, 
    description, 
    amount, 
    product_image)
VALUES (
    'NFT of a pickle', 
    30000000, 
    'not a scam I promise',
    1, 
    'uploads/images/products/pickle.jpeg');

INSERT INTO products (product_name, price, description, amount, product_image)
VALUES ('Deep dark fantasy', 300, 'Van-sama at your service', 300, 'uploads/images/products/van.jpeg');