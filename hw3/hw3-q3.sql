SELECT f2.origin_city AS origin_city, CAST((SELECT count(*) AS number
    FROM FLIGHTS AS f1
    WHERE f1.actual_time < 180
        AND f1.origin_city = f2.origin_city
        AND f1.canceled = 0
    GROUP BY f1.origin_city) AS float) * 100 /count(f2.origin_city) AS percentage
FROM FLIGHTS AS f2

GROUP BY f2.origin_city;

/*
1.Number of the query returns
327
2.how long the query took
15s
3.first 20 rows of the results
origin_city         percentage
Dothan AL 92.5373134328358
Toledo OH 93.2231404958678
Peoria IL 96.128170894526
Yuma AZ 98.134328358209
Bakersfield CA 81.1349693251534
Ontario CA 87.3356978927603
Daytona Beach FL 94.6830265848671
Laramie WY 100
Victoria TX 100
North Bend/Coos Bay OR 97.5
Erie PA 97.4025974025974
Guam TT
Columbus GA 90.0398406374502
Wichita Falls TX 97.752808988764
Juneau AK 99.171270718232
Hartford CT 85.7679383277328
Hattiesburg/Laurel MS 100
Myrtle Beach SC 97.613721103654
Arcata/Eureka CA 96.3675213675214
Kotzebue AK 92.9032258064516
*/