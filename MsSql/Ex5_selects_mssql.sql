SELECT students.name, subjects.name AS 'subject', groups.name AS 'group', teachers.name AS 'teacher'
FROM teachers_dirs_subjects
JOIN subjects ON subjects.id = teachers_dirs_subjects.subject_id
JOIN directions ON directions.id = teachers_dirs_subjects.direction_id
JOIN teachers ON teachers.id = teachers_dirs_subjects.teacher_id
JOIN groups ON groups.dir_id = directions.id
JOIN students ON students.group_id = groups.id
ORDER BY groups.name;


SELECT subjects.name AS 'subject',COUNT(*) AS cnt
FROM teachers_dirs_subjects
JOIN subjects ON subjects.id = teachers_dirs_subjects.subject_id
JOIN directions ON directions.id = teachers_dirs_subjects.direction_id
JOIN groups ON groups.dir_id = directions.id
JOIN students ON students.group_id = groups.id
GROUP BY subjects.name
ORDER BY cnt DESC;

SELECT teachers.name AS 'subject',COUNT(*) AS cnt
FROM teachers_dirs_subjects
JOIN teachers ON teachers.id = teachers_dirs_subjects.teacher_id
JOIN directions ON directions.id = teachers_dirs_subjects.direction_id
JOIN groups ON groups.dir_id = directions.id
JOIN students ON students.group_id = groups.id
GROUP BY teachers.name
ORDER BY cnt DESC;

SELECT subjects.name, (SUM(IIF(marks.mark > 2, 1, 0)) * 100.0 / COUNT(*)) as 'piece' FROM subjects
JOIN teachers_dirs_subjects ON teachers_dirs_subjects.subject_id = subjects.id
JOIN marks ON marks.student_id = teachers_dirs_subjects.id
GROUP BY subjects.name;



SELECT subjects.name, AVG(marks.mark) as 'avg' FROM subjects
JOIN teachers_dirs_subjects ON teachers_dirs_subjects.subject_id = subjects.id
JOIN marks ON marks.student_id = teachers_dirs_subjects.id
WHERE marks.mark > 2
GROUP BY subjects.name;


SELECT groups.name AS 'group', AVG(marks.mark) as 'avg' FROM groups
JOIN students ON students.group_id = groups.id
JOIN marks ON marks.student_id = students.id
GROUP BY groups.name
ORDER BY AVG(marks.mark) DESC

SELECT students.name, AVG(marks.mark)
FROM students
JOIN marks ON marks.student_id = students.id
GROUP BY students.name
HAVING AVG(marks.mark) = 5.0

SELECT students.name
FROM students
JOIN marks ON marks.student_id = students.id
WHERE marks.mark = 2
GROUP BY students.name
HAVING COUNT(*)>1