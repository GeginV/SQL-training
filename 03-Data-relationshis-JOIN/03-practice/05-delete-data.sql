DELETE FROM company_buildings
WHERE id = 2; -- sets to NULL

DELETE FROM teams
WHERE id = 2; -- triggers cascade

DELETE FROM employees
WHERE id = 1; --triggers error