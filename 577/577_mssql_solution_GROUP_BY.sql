/* 577. Employee Bonus */
SELECT E.name, B.bonus
FROM Employee AS E 
FULL OUTER JOIN Bonus AS B ON E.empId = B.empId
GROUP BY E.empID, E.name, B.bonus
HAVING B.bonus < 1000 OR B.bonus IS NULL