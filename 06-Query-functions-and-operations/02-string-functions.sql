-- SELECT CONCAT(first_name, ' and ' , last_name)
-- FROM memberships;

-- SELECT first_name ||' and '|| last_name -- only postgreSQL
-- FROM memberships;

-- SELECT CONCAT('$ ', price)
-- FROM memberships;

-- INSERT INTO memberships(gender, last_name)
--  VALUES (LOWER('ALL LOWER CASE'), UPPER('all caps'));

SELECT * FROM memberships
WHERE LENGTH(first_name) = 4; --count string lenght as interger

INSERT INTO memberships( gender, last_name, first_name)
VALUES (
    TRIM(LEADING  'XXX' FROM 'XXX - removes X'),  
    TRIM(TRAILING 'XXX' FROM  'removes X - XXX'), 
    TRIM(BOTH 'XXX' FROM 'XXX - removes X - XXX')
);