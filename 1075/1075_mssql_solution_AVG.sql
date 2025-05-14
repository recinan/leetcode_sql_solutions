/* 1075. Project Employees */
SELECT P.project_id, ROUND(AVG(E.experience_years * 1.0),2) AS average_years
FROM Project P 
JOIN Employee E ON P.employee_id = E.employee_id
GROUP BY P.project_id