-- Write your PostgreSQL query statement below
select product_name,year,price
from Sales
left join Product on Sales.product_id = product.product_id;
