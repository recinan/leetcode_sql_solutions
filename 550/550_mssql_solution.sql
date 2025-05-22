/* 550. Game Play Analysis IV */ 
SELECT 
    ROUND(COUNT(DISTINCT player_id)*1.0 / 
    (SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM Activity
WHERE player_id IN (
    SELECT DISTINCT A1.player_id FROM Activity A1 
    JOIN Activity A2 
    ON A1.player_id = A2.player_id 
    WHERE DATEDIFF(day, A1.event_date, A2.event_date) = 1
)