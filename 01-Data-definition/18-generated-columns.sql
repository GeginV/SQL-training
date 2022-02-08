-- CREATE TYPE employment_status AS ENUM ('self-employed', 'employed', 'unemployed'); -- Postgresql. Stored in database. Don't need to do it again if did before. 

CREATE TABLE users (
    -- id SERIAL PRIMARY KEY, -- Postgresql
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    full_name VARCHAR(601) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status ENUM ('self-employed', 'employed', 'unemployed') -- MySQL
    -- current_status employment_status -- Postgresql. If employment_status was created.
);


INSERT INTO users (yearly_salary, first_name, last_name, current_status) 
VALUES (19000, 'Max', 'Schwarz', 'self-employed'); 

INSERT INTO users (first_name, last_name, current_status) 
VALUES ('Greg', 'Holz', 'unemployed');

INSERT INTO users (yearly_salary, first_name, last_name, current_status) 
VALUES ( 10000, 'Brandon', 'Belmont', 'self-employed');

INSERT INTO users (yearly_salary, first_name, last_name, current_status) 
 VALUES (5000, 'Muchamed',  'Abdul', 'employed');