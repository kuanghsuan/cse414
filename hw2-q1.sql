SELECT DISTINCT flight_num
from FLIGHTS
JOIN CARRIERS ON FLIGHTS.carrier_id=CARRIERS.cid
JOIN WEEKDAYS ON FLIGHTS.day_of_week_id=WEEKDAYS.did
where WEEKDAYS.day_of_week = 'Monday' and CARRIERS.name = 'Alaska Airlines Inc.' AND origin_city = 'Seattle WA' and dest_city = 'Boston MA';


