-- Write your PostgreSQL query statement below
(select product_id , new_price as price
from Products p
where change_date = (select max(change_date) from Products where change_date<='2019-08-16' and product_id = p.product_id)
order by product_id)
union 
(
select product_id , 10 as price
from Products p
where '2019-08-16' < (select min(change_date) from Products where product_id = p.product_id)
order by product_id
)
