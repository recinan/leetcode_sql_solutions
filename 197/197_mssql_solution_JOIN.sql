/* 197. Rising Temperature */ 
SELECT W2.id as Id
FROM Weather W1 
RIGHT JOIN Weather W2 ON DATEDIFF(day,W1.recordDate, W2.recordDate) = 1
WHERE W2.temperature > W1.temperature 
/* 550ms 38.99% */