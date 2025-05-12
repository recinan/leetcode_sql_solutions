/* 197. Rising Temperature */ 
SELECT W2.id as Id
FROM Weather W1 
RIGHT JOIN Weather W2 ON W2.recordDate::date = W1.recordDate::date + 1
WHERE W2.temperature > W1.temperatures
/* 210ms - Beats 93.78%*/