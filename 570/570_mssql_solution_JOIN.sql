/* 570. Managers with at Least 5 Direct Reports */
SELECT E1.name
FROM Employee E1
JOIN Employee E2 ON E1.id = E2.managerId
GROUP BY E2.managerId, E1.name
HAVING COUNT(E2.managerId)>=5