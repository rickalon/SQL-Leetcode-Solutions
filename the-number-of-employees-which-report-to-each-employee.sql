-- Write your PostgreSQL query statement below
select E.employee_id, E.name, count(*) as reports_count,round(avg(C.age),0) as average_age 
from Employees E
inner join Employees C on E.employee_id = C.reports_to 
group by E.employee_id, E.name
order by E.employee_id
