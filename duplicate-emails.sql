-- Write your PostgreSQL query statement below
select distinct email as "Email"
from Person p
where email in (select email from Person where id!=p.id)
