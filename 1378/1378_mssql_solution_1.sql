/* 1378. Replace Employee ID With The Unique Identifier */
SELECT empUNI.unique_id, emp.name
FROM Employees AS emp 
LEFT JOIN EmployeeUNI AS empUNI /*LEFT JOIN** */
ON emp.id = empUNI.id