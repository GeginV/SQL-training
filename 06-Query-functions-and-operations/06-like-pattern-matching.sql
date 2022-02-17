-- SELECT first_name LIKE '___u%', first_name -- _ is for amount of characters on a side, % is for indefinite amount
-- FROM memberships;

-- SELECT first_name
-- FROM memberships
-- WHERE first_name LIKE 'J____';

SELECT first_name ILIKE 'ma%', first_name  -- ILIKE is case-insensitive (only in postgreSQL)
FROM memberships;