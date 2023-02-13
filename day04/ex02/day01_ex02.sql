-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create view v_generated_dates as 
select cast(day as date) as missing_date
from generate_series(timestamp '2022-01-01', '2022-01-31', '1 day') as day;
