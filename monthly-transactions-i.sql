-- Write your PostgreSQL query statement below
select to_char(trans_date, 'YYYY')|| '-' || to_char(trans_date,'MM') as month, country,
count(*) as trans_count,
count(*) filter(where state = 'approved') as approved_count,
case when count(*)=0 then 0 else sum(amount) end as trans_total_amount,
case when count(*) filter(where state = 'approved') = 0 then 0 else sum(amount) filter(where state = 'approved') end  as approved_total_amount 
from Transactions
group by to_char(trans_date, 'YYYY'),to_char(trans_date,'MM'),country
