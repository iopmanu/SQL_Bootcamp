-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with den_anna
as (
    select *
    from person_order join person on person_order.person_id = person.id
    where person.name in ('Denis', 'Anna')
)
select menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name
from den_anna join menu on den_anna.menu_id = menu.id
              join pizzeria on menu.pizzeria_id = pizzeria.id
order by pizza_name, pizzeria_name
