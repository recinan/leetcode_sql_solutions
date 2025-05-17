/* 1934. Confirmation Rate */
SELECT S.user_id, 
ISNULL(ROUND(
    SUM(CASE WHEN C.action = 'confirmed' THEN 1 ELSE 0 END)*1.0/
    NULLIF(SUM(CASE 
                WHEN C.action='confirmed' THEN 1
                WHEN C.action='timeout' THEN 1
                ELSE 0
            END),0),
        2),0) AS confirmation_rate
FROM Signups S LEFT JOIN Confirmations C
ON S.user_id = C.user_id
GROUP BY S.user_id;