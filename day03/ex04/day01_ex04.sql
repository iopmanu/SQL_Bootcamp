-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with orders as (select pizzeria.name, person.gender
                from person_order join person on person.id = person_order.person_id
                                  join menu on person_order.menu_id = menu.id
                                  join pizzeria on menu.pizzeria_id = pizzeria.id),
     women as (select name
               from orders
               where orders.gender = 'female'),
     man   as (select name
               from orders
               where orders.gender = 'male'),
     only_womens as (select name
                  from women
                  except
                  select name
                  from man),
     only_mans   as  (select name
                  from man
                  except
                  select name
                  from women)

select name
from only_womens
union
select name
from only_mans
order by name
