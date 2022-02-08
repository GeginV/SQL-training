CREATE TABLE employers (
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_revenue FLOAT(5,2), -- Approximation - Allowed: 123.45, 1.23, Not Allowed: 1234.56, 1.234
    yearly_revenue NUMERIC(5,2), -- Exact value - Allowed, Not allowed: the same as FLOAT
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversation (
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );