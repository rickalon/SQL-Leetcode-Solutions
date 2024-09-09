-- Write your PostgreSQL query statement below
select distinct num as ConsecutiveNums
from Logs l 
where num = (select num from Logs where id = l.id+1) and num = (select num from Logs where id = l.id+2)
