/* 1633. Percentage of Users Attended a Contest */
SELECT R.contest_id, 
ROUND(COUNT(R.user_id)*100.0/(SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Users U
JOIN Register R ON U.user_id = R.user_id
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id ASC