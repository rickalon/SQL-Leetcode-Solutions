-- Write your PostgreSQL query statement below
select X.name
from Employee X
inner join Employee Z on X.id = Z.managerId
where X.managerId IS NULL OR X.id != X.managerId
group by X.name,Z.managerId  
having count(*) >= 5
