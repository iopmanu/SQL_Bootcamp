-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select person.name
from person_order join person on person.id = person_order.person_id
group by person.id
having count(person_order.order_date) >= 1
order by name;