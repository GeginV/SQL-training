CREATE TABLE payment_methods (
    -- id INT PRIMARY KEY AUTO_INCREMENT, --MySQL
    id SERIAL PRIMARY KEY,
    name VARCHAR(200)
);

CREATE TABLE tables (
    -- id INT PRIMARY KEY AUTO_INCREMENT, --MySQL
    id SERIAL PRIMARY KEY,
    num_seats INT,
    category VARCHAR(200)
);