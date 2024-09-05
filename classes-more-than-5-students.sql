-- Write your PostgreSQL query statement below
select distinct c.class
from Courses c
where (select count(student) from Courses where c.class=class) >= 5

-- Write your PostgreSQL query statement below
select c.class
from Courses c
group by c.class
having count(c.student) >= 5
