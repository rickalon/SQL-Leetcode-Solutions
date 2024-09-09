-- -- Write your PostgreSQL query statement below
select person_name
from (select * from Queue order by turn) p
where 1000 >= (select sum(weight) from (select * from Queue order by turn limit p.turn)) 
order by turn desc
limit 1 
