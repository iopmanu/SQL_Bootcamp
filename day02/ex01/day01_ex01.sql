-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select cast(day as date) as missing_date
from generate_series(timestamp '2022-01-01', '2022-01-10', '1 day') as day
    left join (select person_visits.visit_date
                from person_visits
                where person_visits.person_id = 1
                      or person_visits.person_id = 2) query
    on day = query.visit_date
where visit_date is null;