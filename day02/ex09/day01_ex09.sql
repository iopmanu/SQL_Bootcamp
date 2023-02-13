-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with females as (select id, name
                        from person
                        where gender = 'female')

select name
from females
    join person_order on person_order.person_id = females.id
    join menu on person_order.menu_id = menu.id
where menu.pizza_name = 'pepperoni pizza'
intersect
select name
from females
    join person_order on person_order.person_id = females.id
    join menu on person_order.menu_id = menu.id
where menu.pizza_name = 'cheese pizza'
order by name;