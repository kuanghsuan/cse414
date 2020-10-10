-- Compute the total departure delay of each airline across all flights. Some departure delays may be negative
-- (indicating an early departure); they should reduce the total, so you don't need to handle them specially. 
-- Name the output columns name and delay, in that order.

SELECT CARRIERS.name, sum(departure_delay) as delay
FROM FLIGHTS
    JOIN CARRIERS on FLIGHTS.carrier_id = CARRIERS.cid
GROUP BY FLIGHTS.carrier_id
;
