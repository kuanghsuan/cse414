SELECT DISTINCT f4.origin_city AS city
FROM FLIGHTS AS f4
WHERE f4.origin_city NOT IN (SELECT DISTINCT f3.dest_city AS city
    FROM FLIGHTS AS f3, FLIGHTS AS f2
    WHERE f2.dest_city = f3.origin_city AND
        f2.origin_city = 'Seattle WA')
    AND
    f4.origin_city NOT IN (SELECT DISTINCT f1.dest_city AS city
    FROM FLIGHTS AS f1
    WHERE f1.origin_city = 'Seattle WA')
ORDER BY f4.origin_city ASC;

/*
1.Number of the query returns
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