-- Write your PostgreSQL query statement below
select employee_id,department_id
from Employee e
where primary_flag  = 'Y' or (primary_flag='N' and 1=(select count(*) from Employee where employee_id=e.employee_id));
