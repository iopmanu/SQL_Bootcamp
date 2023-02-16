-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with help as(
          select person_order.person_id,
                 menu.pizzeria_id,
                 count(menu.pizzeria_id) as count,
                 case
                    when (count(menu.pizzeria_id) = 1) then 10.5
                    when (count(menu.pizzeria_id) = 2) then 22
                    else 30
                 end        as discount
          from person_order join menu
               on person_order.menu_id = menu.id
          group by person_id, pizzeria_id
          order by person_id)


insert into person_discounts(id, person_id, pizzeria_id, discount)
select row_number() over () as id, help.person_id, help.pizzeria_id, help.discount
from help;

select * from person_discounts;