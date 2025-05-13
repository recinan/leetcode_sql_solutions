/* 1280. Students and Examinations */
SELECT Stu.student_id, Stu.student_name, Sub.subject_name, COUNT(Ex.subject_name) AS attended_exams
FROM Students Stu
CROSS JOIN Subjects Sub
LEFT JOIN Examinations Ex 
ON Ex.subject_name = Sub.subject_name AND Stu.student_id = Ex.student_id
GROUP BY Stu.student_id, Stu.student_name, Sub.subject_name