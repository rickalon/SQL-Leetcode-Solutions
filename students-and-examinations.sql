-- -- Write your PostgreSQL query statement below
select S.student_id, S.student_name, S.subject_name,count( E.subject_name) as attended_exams 
from (select * from Students inner join Subjects on true) S
left join Examinations E on S.subject_name = E.subject_name and S.student_id = E.student_id
group by S.student_id, S.student_name, S.subject_name
order by S.student_id,S.student_name,S.subject_name;
