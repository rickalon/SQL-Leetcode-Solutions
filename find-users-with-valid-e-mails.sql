-- Write your PostgreSQL query statement below
select *
from Users
where mail ~ '^[a-zA-Z]{1}[_\.\-a-zA-Z0-9]*@leetcode\.com$'
