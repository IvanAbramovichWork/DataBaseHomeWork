SELECT groups.name ,students.name, students.budget
from groups, students
where groups.id = students.group_id
order by groups.name, students.name;


SELECT students.name, groups.name , directions.name
from students
JOIN groups
on students.group_id = groups.id
join directions
on groups.dir_id = directions.id
where students.name LIKE 'К%';


SELECT CONCAT(
          SUBSTRING(students.name, 1, CHARINDEX(students.name,' ')+1), '.',
          SUBSTRING(SUBSTRING(students.name ,0 ,  CHARINDEX(students.name,' ')+1),
                    CHARINDEX(SUBSTRING(students.name, 0,  CHARINDEX(students.name,' ')+1),' ')+1, 
                    1), '.') ,
           DAY(students.birth) ,
           DATENAME(month, students.birth) ,
           groups.name ,
           directions.name 
FROM students
join groups ON groups.id = students.group_id
JOIN directions ON directions.id = groups.dir_id;

SELECT students.name,
DATEDIFF(year, students.birth, CAST(GETDATE() AS DATE))
FROM students;


SELECT students.name,
		DATENAME(day, students.birth),
		DATENAME(month, students.birth)
FROM students
WHERE DATENAME(month, students.birth) = DATENAME(month, GETDATE());


SELECT directions.name, COUNT(students.id)
FROM directions
JOIN groups ON groups.dir_id = directions.id
JOIN students ON students.group_id = groups.id
GROUP BY directions.id, directions.name

SELECT groups.name AS 'group',
		directions.name as 'direction',
        COUNT(*) AS 'всего',
		SUM(case when students.budget = 1 then 1 else 0 end) AS 'бюджет',
        SUM(case when students.budget = 1 then 1 else 0 end) AS 'внебюджет'
FROM students
JOIN groups ON groups.id = students.group_id
JOIN directions ON groups.dir_id = directions.id
GROUP BY groups.name, directions.name
