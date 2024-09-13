-- Write your PostgreSQL query statement below
delete 
from Person p
where exists (select 1 from Person where email=p.email and id!=p.id and id < p.id)
