-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with visited as (select pizzeria.name, person.name
                 from person_visits 
                    join person on person.id=person_visits.person_id
                    join pizzeria on person_visits.pizzeria_id=pizzeria.id
                 where person.name = 'Andrey'),
     with_order as (select pizzeria.name as name
                       from person_order
                          join person on person.id=person_order.id
                          join menu on person_order.menu_id=menu.id
                          join pizzeria on menu.pizzeria_id=pizzeria.id
                       where person.name = 'Andrey'),
     all_pizzerias as (select pizzeria.name
                       from pizzeria),
     without_order as (select *
                       from all_pizzerias
                       except
                       select * from with_order)
     
select * from with_order
order by name