-- List the distinct flight numbers of all flights from Seattle to Boston by Alaska Airlines Inc. on Mondays. 
-- Also notice that, in the database, the city names include the state. So Seattle appears as Seattle WA. 
-- Please use the flight_num column instead of fid. Name the output column flight_num.
-- [Hint: Output relation cardinality: 3 rows]

SELECT DISTINCT flight_num AS flight_num
FROM FLIGHTS
    JOIN CARRIERS ON FLIGHTS.carrier_id=CARRIERS.cid
    JOIN WEEKDAYS ON FLIGHTS.day_of_week_id=WEEKDAYS.did
WHERE WEEKDAYS.day_of_week = 'Monday' AND CARRIERS.name = 'Alaska Airlines Inc.' AND origin_city = 'Seattle WA' AND dest_city = 'Boston MA';


