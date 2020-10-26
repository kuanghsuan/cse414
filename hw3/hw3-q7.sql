SELECT DISTINCT c1.name AS carrier
FROM CARRIERS AS c1, FLIGHTS AS f1
WHERE c1.cid = f1.carrier_id AND
    f1.origin_city = 'Seattle WA' AND
    f1.dest_city = 'San Francisco CA'

ORDER BY c1.name ASC;

/*
1.Number of the query returns
4
2.how long the query took
3s
3.first 20 rows of the results
CARRIER
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
