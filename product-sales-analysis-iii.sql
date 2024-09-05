-- Write your PostgreSQL query statement below
select s.product_id,year as first_year ,quantity,price
from Sales s
inner join Product p on s.product_id = p.product_id
where year = (select min(year) from Sales where s.product_id = product_id)
