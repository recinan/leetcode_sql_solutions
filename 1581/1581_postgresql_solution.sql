/* 1581. Customer Who Visited but Did Not Make Any Transactions */ 
SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits AS V LEFT JOIN Transactions AS T ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY v.customer_id