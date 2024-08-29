-- Write your PostgreSQL query statement below
select *
from Cinema
where id % 2 != 0 and description not ilike 'boring'
order by rating desc;
