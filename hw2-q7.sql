-- Find the total capacity of all direct flights that fly between Seattle and San Francisco, CA on July 10th
-- (i.e. Seattle to SF or SF to Seattle).
-- Name the output column capacity.

SELECT SUM(capacity) AS capacity
FROM FLIGHTS AS F, MONTHS AS M
WHERE F.month_id=M.mid AND
       ((F.origin_city = 'Seattle WA' AND F.dest_city = 'San Francisco CA')
       OR (F.dest_city = 'Seattle WA' AND F.origin_city = 'San Francisco CA'))
       AND M.month='July' AND F.day_of_month=10;


