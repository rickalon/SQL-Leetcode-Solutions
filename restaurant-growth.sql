-- Write your PostgreSQL query statement below
select c.visited_on,(select sum(amount) from Customer where visited_on between (c.visited_on - interval '6 days') and c.visited_on) as amount,
round(((select sum(amount) from Customer where visited_on between (c.visited_on - interval '6 days') and c.visited_on)/7.0),2) as average_amount
from Customer c
where (visited_on - interval '6 days') in (select visited_on from Customer)
group by visited_on
order by visited_on;
