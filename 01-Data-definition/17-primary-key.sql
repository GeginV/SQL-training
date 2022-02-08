DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;

-- CREATE TYPE employment_status AS ENUM ('self-employed', 'employed', 'unemployed'); -- Postgresql. Stored in database. Don't need to do it again if did before. 

CREATE TABLE users (
    -- id SERIAL PRIMARY KEY, -- Postgresql
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    full_name VARCHAR(601) GENERATED ALWAYS AS (CONCAT(first_name, '', last_name)),
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status ENUM ('self-employed', 'employed', 'unemployed'); -- MySQL
    -- current_status employment_status -- Postgresql. If employment_status was created.
);

CREATE TABLE employers (
  -- id SERIAL PRIMARY KEY, -- Posgresql
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  company_name VARCHAR(250) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  yearly_revenue NUMERIC(5,2) CHECK (yearly_revenue > 0),
  is_hiring BOOLEAN  DEFAULT FALSE
);

CREATE TABLE conversations (
    -- id SERIAL PRIMARY KEY,-- Posgresql
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    user_id INT,
    employer_id INT,
    message TEXT NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);