-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select pizzeria.name, pizzeria.rating
from pizzeria left join person_visits on pizzeria.id = person_visits.pizzeria_id
where person_visits.pizzeria_id is null;