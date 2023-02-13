-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with kate as (select menu.pizza_name as pizza_name, 
                     menu.price as pizza_price, 
                     pizzeria.name as pizzeria_name, 
                     person_visits.visit_date as visit_date
              from person join person_visits on person_visits.person_id = person.id
                          join pizzeria on person_visits.pizzeria_id = pizzeria.id
                          join menu on pizzeria.id = menu.pizzeria_id
              where person.name = 'Kate' and menu.price between 800 and 1000)

select * from kate
order by pizza_name, pizza_price, pizzeria_name