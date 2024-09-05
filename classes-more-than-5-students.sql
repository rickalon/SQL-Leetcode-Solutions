-- Write your PostgreSQL query statement below
select distinct c.class
from Courses c
where (select count(student) from Courses where c.class=class) >= 5
