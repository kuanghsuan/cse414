select distinct c1.name as carrier
from CARRIERS as c1, FLIGHTS as f1
where c1.cid = f1.carrier_id AND
    f1.origin_city = 'Seattle WA' AND
    f1.dest_city = 'San Francisco CA'

order by c1.name asc;

/*
result:
1.the number of the query returns
4
2.how long the query took
3s
3.first 20 rows of the results
CARRIER
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
