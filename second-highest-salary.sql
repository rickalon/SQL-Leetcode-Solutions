-- Write your PostgreSQL query statement below
select case when count(sal)=0 then null else MAX(sal) end as SecondHighestSalary  from (
select salary as sal 
from Employee
group by salary
order by salary desc
offset 1
limit 1)
