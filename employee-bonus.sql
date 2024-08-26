-- Write your PostgreSQL query statement below
select name, X.bonus
from Employee E
left join Bonus X on E.empId = X.empId
where X.bonus is null or X.bonus < 1000;
