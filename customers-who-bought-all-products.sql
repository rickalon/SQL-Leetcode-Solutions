-- Write your PostgreSQL query statement below
select c.customer_id
from (select distinct customer_id,product_key from Customer) c
group by c.customer_id
having count(c.customer_id) = (select count(*) from Product)
