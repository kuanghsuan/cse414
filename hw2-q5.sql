SELECT C.name AS name, (SUM(F.canceled)*100.0/COUNT(*)) AS percentage
FROM FLIGHTS AS F, CARRIERS AS C
WHERE F.carrier_id=c.cid AND F.origin_city='Seattle WA'
GROUP BY C.name
HAVING percentage > 0.5
ORDER BY percentage ASC;
