-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with pizza
as (
    select *
    from menu
    where menu.pizza_name in ('mushroom pizza', 'pepperoni pizza')
)

select pizza_name, pizzeria.name, price
from pizza join pizzeria on pizza.pizzeria_id = pizzeria.id
order by pizza_name, pizzeria.name