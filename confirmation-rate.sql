-- Write your PostgreSQL query statement below
select S.user_id, round((case when count(C.action) = 0 then 0 else (count(case when C.action = 'confirmed' then 1 end)::NUMERIC/count(C.action)) end),2) as confirmation_rate
from Signups S
left join Confirmations C on S.user_id = C.user_id
group by S.user_id
