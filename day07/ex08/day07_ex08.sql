-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select person.address, pizzeria.name, count(person_order.order_date)
from person_order join person on person_order.person_id = person.id
                  join menu on person_order.menu_id = menu.id
                  join pizzeria on menu.pizzeria_id = pizzeria.id
group by pizzeria.name, person.address
order by person.address, pizzeria.name
