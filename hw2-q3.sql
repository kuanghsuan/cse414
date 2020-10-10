 SELECT WEEKDAYS.day_of_week, AVG(arrival_delay)
 FROM FLIGHTS
 JOIN WEEKDAYS ON FLIGHTS.day_of_week_id = WEEKDAYS.did
 GROUP BY day_of_week_id
 ORDER BY AVG(arrival_delay) DESC
 LIMIT 1;
