CREATE TABLE employees (
    id SERIAl PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    supervisor_id INT REFERENCES employees (id) ON DELETE SET NULL
)