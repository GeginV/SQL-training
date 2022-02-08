 -- For a new table
CREATE TABLE users (
    full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0 AND yearly_salary < 99999999)
    CHECK (yearly_salary < max_salary)
);

-- For existing table (Will not work since it violates existing information)
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);
-- Let's make it work (run it first)
UPDATE users
SET yearly_salary = NULL
WHERE full_name = 'Greg Holz';
