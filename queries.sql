SELECT * FROM students;

SELECT * FROM students WHERE age > 20;

SELECT * FROM students ORDER BY age DESC LIMIT 3;

SELECT DISTINCT grade FROM students;

SELECT s.name, s.grade, c.course_name
FROM students s
INNER JOIN courses c ON s.id = c.student_id;

SELECT s.name, c.course_name
FROM students s
LEFT JOIN courses c ON s.id = c.student_id;

SELECT s.name, s.grade, c.course_name
FROM students s
INNER JOIN courses c ON s.id = c.student_id
WHERE s.grade = 'A' AND c.course_name = 'Machine Learning';

SELECT s.name, COUNT(c.course_id) AS total_courses
FROM students s
LEFT JOIN courses c ON s.id = c.student_id
GROUP BY s.name
ORDER BY total_courses DESC;