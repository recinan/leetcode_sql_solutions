/* 550. Game Play Analysis IV */ 
SELECT 
    ROUND(COUNT(DISTINCT player_id)*1.0 / 
    (SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM Activity
WHERE player_id IN (
    SELECT A1.player_id FROM
    (
        SELECT player_id, MIN(event_date) AS first_login FROM Activity GROUP BY player_id
    ) AS first_login_table
    JOIN Activity A1
    ON A1.player_id = first_login_table.player_id 
    WHERE DATEDIFF(day, first_login_table.first_login, A1.event_date) = 1
)