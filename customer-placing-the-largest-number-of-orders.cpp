-- Write your PostgreSQL query statement below
select customer_number
from Orders 
order by count(customer_number) over (partition by customer_number) desc
limit 1
