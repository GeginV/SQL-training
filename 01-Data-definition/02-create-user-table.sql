--creating custom EMUM for PostgreSQL
 CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE users (
  full_name VARCHAR(200),
  yearly_salary INT,
  --current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
  current_status employment_status
);

--creating a table with PRIMARY KEY
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(255) NOT NULL,
  yearly_salary INT
);