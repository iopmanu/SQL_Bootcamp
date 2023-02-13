-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with cte as (select menu.pizza_name, pizzeria.name, menu.price, pizzeria.id
             from menu join pizzeria on pizzeria.id = menu.pizzeria_id)
select first_pizza.pizza_name as pizza_name, first_pizza.name as pizzeria_name_1,
       cte.pizza_name as pizzeria_name_2, first_pizza.price
from (select * from cte) first_pizza
join cte on first_pizza.price = cte.price and first_pizza.pizza_name = cte.pizza_name and first_pizza.id > cte.id
order by pizza_name