/* 197. Rising Temperature */ 
SELECT W2.id as Id
FROM Weather W1, Weather W2
WHERE W2.recordDate::date = W1.recordDate::date + 1 AND W2.temperature > W1.temperature
/* 227ms - Beats 68.06%*/