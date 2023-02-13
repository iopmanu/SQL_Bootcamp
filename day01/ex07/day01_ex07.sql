-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select person_order.order_date as order_date, format('%s (age:%s)', person.name, person.age) as person_information
from person_order
inner join person on person.id = person_order.person_id
order by order_date, person_information