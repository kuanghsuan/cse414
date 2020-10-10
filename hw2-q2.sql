SELECT C.name, F1.flight_num, F1.origin_city, F1.dest_city, F1.actual_time,
               F2.flight_num, F2.origin_city, F2.dest_city, F2.actual_time

FROM FLIGHTS as F1, FLIGHTS as F2, CARRIERS as  C
WHERE F1.carrier_id = F2.carrier_id
    AND F1.carrier_id = C.cid
    AND F1.origin_city = 'Seattle WA'
    AND F1.dest_city = F2.origin_city
    AND F1.carrier_id = F2.carrier_id
    AND F2.dest_city = 'Boston MA'
    AND F1.actual_time + F2.actual_time < 420
    AND F1.day_of_month = 15
    AND F2.day_of_month = 15
    AND F1.month_id = 7
        ;

