-- SELECT price * billing_frequency AS annual_rev
-- FROM memberships;

-- SELECT CEIL(consumption)
-- FROM memberships; -- round up to interture

-- SELECT FLOOR(consumption)
-- FROM memberships; -- round down to interture

-- SELECT ROUND(consumption, 2)
-- FROM memberships; -- round up to a certain decimal

SELECT TRUNC(consumption, 2) -- TRUNCATE for mySQL
FROM memberships; -- cut certain amount of decimals