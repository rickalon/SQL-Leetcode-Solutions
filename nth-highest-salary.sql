CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
    -- Write your PostgreSQL query statement below.
    IF N <= 0 THEN
        RETURN QUERY SELECT null::int;
    ELSE
     RETURN QUERY (
        select distinct e.salary as Salary
        from Employee e
        order by e.salary desc
        offset n-1 limit 1      
  );
    end if;

END;
$$ LANGUAGE plpgsql;
