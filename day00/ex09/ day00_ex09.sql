-- Active: 1675701551542@@127.0.0.1@5432@mablever@public
select (
    select name 
    from person
    where person.id = pv.person_id
) as person_name, (
    select pizzeria.name
    from pizzeria
    where pizzeria.id = pv.pizzeria_id
) as pizzeria_name
from (select *
        from person_visits
        where person_visits.visit_date between '2022-01-07' and '2022-01-09') as pv
order by person_name asc, person_name desc;