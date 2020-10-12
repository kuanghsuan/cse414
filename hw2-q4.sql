-- Find the names of all airlines that ever flew more than 1000 flights in one day
-- (i.e., a specific day/month, but not any 24-hour period).
-- Return only the names of the airlines. Do not
-- return any duplicates (i.e., airlines
-- with the exact same name). Name the output column name.

SELECT DISTINCT CARRIERS.name AS name
FROM FLIGHTS, CARRIERS
WHERE FLIGHTS.carrier_id = CARRIERS.cid
GROUP BY FLIGHTS.carrier_id, FLIGHTS.month_id, FLIGHTS.day_of_month
HAVING COUNT(*) > 1000
 ;
