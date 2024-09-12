-- Write your PostgreSQL query statement below
with cft as(
    select e.name,salary,d.name as dname
    from Employee e
    inner join Department d on e.departmentId  = d.id
    order by salary desc
)
select dname as "Department", name as "Employee", Salary as "Salary"
from(select dname,name, max(salary) as Salary
from cft
group by dname,salary,name
order by dname,salary desc) a
where Salary in (select salary
from cft
where a.dname = dname
group by salary
order by salary desc
limit 3)
 
