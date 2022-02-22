START TRANSACTION; --MySQL
BEGIN TRANSACTION; -- PostgreSQL

INSERT INTO customers(
    first_name,
    last_name,
    email
)
VALUES(
    'Maria',
    'Jones',
    'maria@test.com'
);

INSERT INTO orders(
   amount_billed,
   customer_id 
)
VALUES(
    103.12,
    6
);

ROLLBACK; -- reverse the changes during TRANSACTION
COMMIT; -- apply the changes during TRANSACTION. Triggers when the second TRANSACTION starts.

SAVEPOINT save_1; -- can have a custom NAME
ROLLBACK TO save_1;