-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select v_generated_dates.missing_date 
from v_generated_dates
where v_generated_dates.missing_date
not in (select person_visits.visit_date
        from person_visits
)
order by missing_date