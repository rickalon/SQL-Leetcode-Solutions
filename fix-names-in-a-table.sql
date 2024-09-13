-- Write your PostgreSQL query statement below
select user_id, upper(SUBSTRING(name from 1 for 1)) || lower(substring(name from 2 for length(name))) as name
from Users
order by user_id
