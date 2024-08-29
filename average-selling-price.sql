-- Write your PostgreSQL query statement below
select P.product_id, case when U.product_id is null then 0 else round(sum(price*units)::numeric / sum(units),2) end as average_price
from Prices P
left join UnitsSold U on P.product_id = U.product_id
where purchase_date between start_date and end_date or U.product_id is null
group by P.product_id, U.product_id
order by P.product_id;
