-- Write your PostgreSQL query statement below
select round((count(*) filter(where order_date = customer_pref_delivery_date) * 100.0)
/
(count(*)),2)  as immediate_percentage 
from delivery
where (customer_id, order_date) IN (
		SELECT
			customer_id,
			MIN(order_date)
		FROM
			delivery
		GROUP BY
			customer_id
)
