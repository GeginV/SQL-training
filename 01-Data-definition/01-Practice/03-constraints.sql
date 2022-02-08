ALTER TABLE products
-- MODIFY COLUMN product_name VARCHAR(200) NOT NULL,
-- MODIFY COLUMN  price NUMERIC(10,2) NOT NULL CHECK (price > 0),
-- MODIFY COLUMN description TEXT NOT NULL,
-- MODIFY COLUMN amount SMALLINT CHECK (amount > 0); --MySQL
ALTER COLUMN product_name SET NOT NULL,
ALTER COLUMN price SET NOT NULL,
ALTER COLUMN description SET NOT NULL,
ADD CONSTRAINT price_positive CHECK (price > 0),
ADD CONSTRAINT amount_is_positive CHECK (amount >= 0);
