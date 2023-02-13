-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with without_order as (select menu.id
                       from menu
                       except
                       select person_order.menu_id
                       from person_order)
select id as menu_id
from without_order
order by id
