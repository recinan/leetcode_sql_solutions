/* 1934. Confirmation Rate */
SELECT S.user_id, 
IFNULL(ROUND(SUM(C.action='confirmed')*1.0/(SUM(C.action='timeout')+SUM(C.action='confirmed')),2),0) AS confirmation_rate
FROM Signups S LEFT JOIN Confirmations C
ON S.user_id = C.user_id
GROUP BY S.user_id