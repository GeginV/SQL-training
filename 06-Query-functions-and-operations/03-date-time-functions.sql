-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin
-- FROM memberships;
-- SELECT EXTRACT(ISODOW FROM last_checkin), last_checkin
-- FROM memberships; -- if you want SUNDAY == 7

-- -- mySQL
-- SELECT WEEKDAY(last_checkin) +1 , last_checkin
-- FROM memberships;

-- --mySQL
-- SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
-- FROM memberships;

SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;