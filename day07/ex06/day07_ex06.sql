-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select pizzeria.name,
       count(person_order.order_date) as count_of_orders,
       round(avg(menu.price), 2) as average_price,
       round(max(menu.price), 2) as max_price,
       round(min(menu.price), 2) as min_price
from person_order join menu on person_order.menu_id = menu.id
                  join pizzeria on menu.pizzeria_id = pizzeria.id
group by pizzeria.name
order by pizzeria.name