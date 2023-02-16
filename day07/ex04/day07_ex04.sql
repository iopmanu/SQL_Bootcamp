-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select person.name, count(pizzeria_id) as count_of_visits
from person_visits join person on person.id = person_visits.person_id
group by person.id
having count(pizzeria_id) > 3;