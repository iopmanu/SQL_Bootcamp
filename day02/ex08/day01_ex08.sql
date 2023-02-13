-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with moscow_samara as (select id, name
                        from person
                        where address in ('Moscow', 'Samara')
                            and gender = 'male')

select distinct name
from moscow_samara
    join person_order on person_order.person_id = moscow_samara.id
    join menu on person_order.menu_id = menu.id
where menu.pizza_name in ('pepperoni pizza', 'mushroom pizza')
order by name desc;