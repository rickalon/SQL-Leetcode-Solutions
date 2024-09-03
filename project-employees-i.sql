-- Write your PostgreSQL query statement below
select project_id, round(avg(E.experience_years)::numeric,2) as average_years 
from Project P
inner join Employee E on P.employee_id = E.employee_id
group by project_id
