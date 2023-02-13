-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with dmitry as (select *
                from person_visits
                         join (select *
                               from person
                               WHERE person.name = 'Dmitriy') AS people
                               ON person_visits.person_id = people.id
                where person_visits.visit_date = '2022-01-08'),
     pizzerias as (select pizzeria.id as pizzeria_id, pizzeria.name as pizzeria_name
                    from pizzeria join dmitry on dmitry.pizzeria_id = pizzeria.id),
     pizza_prices as (select pizzerias.pizzeria_name, menu.price
                      from menu join pizzerias on menu.pizzeria_id = pizzerias.pizzeria_id)
select distinct pizzeria_name
from pizza_prices
where pizza_prices.price <= 800