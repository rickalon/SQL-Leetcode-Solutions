-- Write your PostgreSQL query statement below
select teacher_id , count(subject_id) as cnt
from Teacher
where (teacher_id,subject_id,dept_id) in (
    select t.teacher_id,t.subject_id,min(t.dept_id)
    from Teacher t
    group by t.teacher_id,t.subject_id
)
group by teacher_id 
