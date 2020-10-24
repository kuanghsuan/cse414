select distinct f4.origin_city as city
from FLIGHTS as f4
where f4.origin_city not in (select distinct f3.dest_city as city
    from FLIGHTS as f3, FLIGHTS as f2
    where f2.dest_city = f3.origin_city AND
        f2.origin_city = 'Seattle WA')
    AND
    f4.origin_city not in (select distinct f1.dest_city as city
    from FLIGHTS as f1
    where f1.origin_city = 'Seattle WA')
Order by f4.origin_city ASC;

/*
result:
1.the number of the query returns
4(I assume all cities to be the collection of all origin_city)
2.how long the query took
46s
3.first 20 rows of the results
CITY
Devils Lake ND
Hattiesburg/Laurel MS
St. Augustine FL
Victoria TX
*/