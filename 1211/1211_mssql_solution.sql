/* 1211. Queries Quality and Percentage */
SELECT query_name, 
        ROUND(AVG(rating*1.0/position),2) AS quality,
        ISNULL(ROUND((SUM(CASE WHEN rating < 3 THEN 1 ELSE NULL END)*1.0/COUNT(*))*100,2),0) AS poor_query_percentage
FROM Queries
GROUP BY query_name