-- Write your PostgreSQL query statement below
select w.id
from Weather W
inner join Weather X ON W.recordDate = X.recordDate + INTERVAL '1 DAY'
WHERE W.temperature > X.temperature;
