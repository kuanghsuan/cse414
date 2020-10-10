SELECT CARRIERS.name, MAX(FLIGHTS.price) AS max_price
FROM FLIGHTS
JOIN CARRIERS on FLIGHTS.carrier_id = CARRIERS.cid
WHERE (FLIGHTS.origin_city = 'Seattle WA' AND FLIGHTS.dest_city = 'New York NY')
    OR (FLIGHTS.dest_city = 'Seattle WA' AND FLIGHTS.origin_city = 'New York NY')
GROUP BY FLIGHTS.carrier_id;
