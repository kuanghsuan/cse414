SELECT CARRIERS.name, sum(departure_delay) as delay
FROM FLIGHTS
JOIN CARRIERS on FLIGHTS.carrier_id = CARRIERS.cid
GROUP BY FLIGHTS.carrier_id
;
