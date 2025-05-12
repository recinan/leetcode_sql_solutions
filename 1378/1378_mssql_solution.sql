/* 1378. Replace Employee ID With The Unique Identifier */
SELECT empUNI.unique_id, emp.name
FROM Employees AS emp 
FULL OUTER JOIN EmployeeUNI AS empUNI  
ON emp.id = empUNI.id