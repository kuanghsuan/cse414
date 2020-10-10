-- List the distinct flight numbers of all flights from Seattle to Boston by Alaska Airlines Inc. on Mondays. 
-- Also notice that, in the database, the city names include the state. So Seattle appears as Seattle WA. 
-- Please use the flight_num column instead of fid. Name the output column flight_num.
-- [Hint: Output relation cardinality: 3 rows]

SELECT DISTINCT flight_num
from FLIGHTS
    JOIN CARRIERS ON FLIGHTS.carrier_id=CARRIERS.cid
    JOIN WEEKDAYS ON FLIGHTS.day_of_week_id=WEEKDAYS.did
where WEEKDAYS.day_of_week = 'Monday' and CARRIERS.name = 'Alaska Airlines Inc.' AND origin_city = 'Seattle WA' and dest_city = 'Boston MA';


