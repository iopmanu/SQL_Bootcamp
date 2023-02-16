-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select person.name,
       menu.pizza_name,
       menu.price,
       round(menu.price * (1 - person_discounts.discount / 100), 0) as price_with_discount,
       pizzeria.name
from person_order     join person on person.id = person_order.person_id
                      join menu on person_order.menu_id = menu.id
                      join pizzeria on pizzeria.id = menu.pizzeria_id
                      join person_discounts on (person_discounts.pizzeria_id = pizzeria.id and person_discounts.person_id = person.id)                  
order by 1, 2;