-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select pizzeria.name as pizzeria_name
from pizzeria
where name not in (select distinct pizzeria.name
                    from pizzeria
                    join person_visits on pizzeria.id = person_visits.pizzeria_id);

select pizzeria.name as pizzeria_name
from pizzeria
where not exists(select pizzeria.id
                from person_visits
                where pizzeria_id = pizzeria.id)