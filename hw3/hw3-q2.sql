SELECT DISTINCT f2.origin_city AS city
FROM FLIGHTS AS f2, (
        SELECT f.origin_city
    FROM FLIGHTS AS f
    GROUP BY f.origin_city
    HAVING Max(actual_time) < 180) 
             AS f1
WHERE f2.origin_city = f1.origin_city

ORDER BY city ASC;


/*
1.Number of the query returns
109
2.how long the query took
14s
3.first 20 rows of the results
Aberdeen SD
Abilene TX
Alpena MI
Ashland WV
Augusta GA
Barrow AK
Beaumont/Port Arthur TX
Bemidji MN
Bethel AK
Binghamton NY
Brainerd MN
Bristol/Johnson City/Kingsport TN
Butte MT
Carlsbad CA
Casper WY
Cedar City UT
Chico CA
College Station/Bryan TX
Columbia MO
Columbus GA
*/
