-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with without_order as (select menu.id
                       from menu
                       except
                       select person_order.menu_id
                       from person_order),
     pizzas        as (select pizza_name, price, pizzeria_id
                       from menu join without_order on menu.id = without_order.id)

select pizzas.pizza_name, pizzas.price, pizzeria.name as pizzeria_name
from pizzas join pizzeria on pizzeria.id = pizzas.pizzeria_id
order by pizza_name, price
