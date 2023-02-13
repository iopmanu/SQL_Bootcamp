-- Active: 1675786573135@@127.0.0.1@5432@kaif
select person_order.order_date as actual_date, person.name as person_name
from person_order
join person on person.id=person_order.person_id
intersect
select person_visits.visit_date as actual_date, person.name as person_name
from person_visits
join person on person.id=person_visits.person_id
order by actual_date asc, person_name desc;