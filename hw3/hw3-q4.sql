SELECT DISTINCT f3.dest_city AS city
FROM FLIGHTS AS f2, FLIGHTS AS f3
WHERE f2.dest_city = f3.origin_city AND
    f2.origin_city = 'Seattle WA' AND f3.dest_city != 'Seattle WA'
    AND f3.dest_city NOT IN (SELECT DISTINCT f1.dest_city AS city
    FROM FLIGHTS AS f1
    WHERE f1.origin_city = 'Seattle WA')
ORDER BY f3.dest_city ASC;

/*
1.Number of the query returns
256
2.how long the query took
21s
3.first 20 rows of the results
city
Aberdeen SD
Abilene TX
Adak Island AK
Aguadilla PR
Akron OH
Albany GA
Albany NY
Alexandria LA
Allentown/Bethlehem/Easton PA
Alpena MI
Amarillo TX
Appleton WI
Arcata/Eureka CA
Asheville NC
Ashland WV
Aspen CO
Atlantic City NJ
Augusta GA
Bakersfield CA
Bangor ME
*/