-- Find all airlines that had more than 0.5% (= 0.005) of their flights out of Seattle canceled.
-- Return the name of the airline and the percentage of canceled flights out of Seattle. Percentages should be outputted in percent format
-- (3.5% as 3.5 not 0.035). Order the results by the percentage of canceled flights in ascending order.
-- Name the output columns name and percentage, in that order.



SELECT C.name AS name, (SUM(F.canceled)*100.0/COUNT(*)) AS percentage
FROM FLIGHTS AS F, CARRIERS AS C
WHERE F.carrier_id=c.cid AND F.origin_city='Seattle WA'
GROUP BY C.name
HAVING percentage > 0.5
ORDER BY percentage ASC;
