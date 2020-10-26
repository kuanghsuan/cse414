WITH
    subFlight
    AS
    (
        SELECT DISTINCT f1.carrier_id
        FROM FLIGHTS AS f1
        WHERE f1.origin_city = 'Seattle WA' AND
            f1.dest_city = 'San Francisco CA'
    )
SELECT c1.name AS carrier
FROM CARRIERS AS c1, subFlight AS sub
WHERE c1.cid = sub.carrier_id
ORDER BY c1.name ASC;


/*
1.Number of the query returns
4
2.how long the query took
4
3.first 20 rows of the results
CARRIER
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
*/