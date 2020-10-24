select distinct f2.origin_city as city
from FLIGHTS as f2, (
        select f.origin_city
    from FLIGHTS as f
    group by f.origin_city
    Having Max(actual_time) < 180)
             as f1
where f2.origin_city = f1.origin_city

order by city asc;


/*
result:
1.the number of the query returns
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
