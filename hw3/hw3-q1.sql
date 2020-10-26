SELECT DISTINCT f2.origin_city, f2.dest_city, f2.actual_time AS time
FROM FLIGHTS AS f2, (
        SELECT f.origin_city, MAX(actual_time) AS maximum
    FROM FLIGHTS AS f
    GROUP BY f.origin_city) 
             AS f1
WHERE f2.origin_city = f1.origin_city AND
    f1.maximum = f2.actual_time

ORDER BY f2.origin_city, f2.dest_city ASC;


/*
1.Number of the query returns
334
2.how long the query took
20s
3.first 20 rows of the results
origin_city                     dest_city               time
Aberdeen SD	                    Minneapolis MN	        106
Abilene TX	                    Dallas/Fort Worth TX	111
Adak Island AK	                Anchorage AK	        471
Aguadilla PR	                New York NY	            368
Akron OH	                    Atlanta GA	            408
Albany GA	                    Atlanta GA	            243
Albany NY	                    Atlanta GA	            390
Albuquerque NM	                Houston TX	            492
Alexandria LA	                Atlanta GA	            391
Allentown/Bethlehem/Easton PA	Atlanta GA	            456
Alpena MI	                    Detroit MI	            80
Amarillo TX	                    Houston TX	            390
Anchorage AK	                Barrow AK	            490
Appleton WI	                    Atlanta GA	            405
Arcata/Eureka CA	            San Francisco CA	    476
Asheville NC	                Chicago IL	            279
Ashland WV	                    Cincinnati OH	        84
Aspen CO	                    Los Angeles CA	        304
Atlanta GA	                    Honolulu HI	            649
Atlantic City NJ	            Fort Lauderdale FL	    212
*/