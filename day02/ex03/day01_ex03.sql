-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with visits
as (
    select person_visits.visit_date
    from person_visits
    where person_visits.person_id = 1
          or person_visits.person_id = 2
), dates 
as (select cast(day as date) as missing_date
             from generate_series(timestamp '2022-01-01',
                                  timestamp '2022-01-10',
                                            '1 day') as day)
select missing_date
from dates left join visits on dates.missing_date = visits.visit_date
where visit_date is null
