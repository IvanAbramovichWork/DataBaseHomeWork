SELECT subjects.name, lessons_schedule.date, COUNT(attendence.student_id) FROM teachers_dirs_subjects 
left join subjects
on teachers_dirs_subjects.subject_id = subjects.id
left join lessons_schedule
ON teachers_dirs_subjects.id = lessons_schedule.subj_teacher_id
left join attendence
on lessons_schedule.id = attendence.schedule_id
WHERE attendence.presense = 1
GROUP by lessons_schedule.date, subjects.name;


SELECT subjects.name, lessons_schedule.date, COUNT(attendence.student_id) FROM teachers_dirs_subjects 
left join subjects
on teachers_dirs_subjects.subject_id = subjects.id
left join lessons_schedule
ON teachers_dirs_subjects.id = lessons_schedule.subj_teacher_id
left join attendence
on lessons_schedule.id = attendence.schedule_id
WHERE attendence.presense = 0
GROUP by lessons_schedule.date;


SELECT teachers.name, lessons_schedule.date, COUNT(attendence.student_id) FROM teachers_dirs_subjects 
left join teachers
on teachers_dirs_subjects.teacher_id = teachers.id
left join lessons_schedule
ON teachers_dirs_subjects.id = lessons_schedule.subj_teacher_id
left join attendence
on lessons_schedule.id = attendence.schedule_id
WHERE attendence.presense = 1
GROUP by lessons_schedule.date, teachers.name;



SELECT students.name, (COUNT(schedule_id) * 90)/60 FROM students
JOIN attendence
on attendence.student_id = students.id
WHERE attendence.presense = 1
GROUP by students.name; 