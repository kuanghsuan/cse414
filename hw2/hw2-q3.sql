-- Find the day of the week with the longest average arrival delay.
-- Return the name of the day and the average delay.
-- Name the output columns day_of_week and delay, in that order.


SELECT WEEKDAYS.day_of_week AS day_of_week, AVG(arrival_delay) AS delay
FROM FLIGHTS
    JOIN WEEKDAYS ON FLIGHTS.day_of_week_id = WEEKDAYS.did
GROUP BY day_of_week_id
ORDER BY AVG(arrival_delay) DESC
LIMIT 1;