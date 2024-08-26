-- Write your PostgreSQL query statement below
select A.machine_id, round(avg((X.timestamp - A.timestamp)::numeric(5,3)),3) as processing_time 
from Activity A
inner join Activity X on A.machine_id = X.machine_id and A.process_id = X.process_id and A.activity_type = 'start'
where A.activity_type != X.activity_type
group by A.machine_id;
