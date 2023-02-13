-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create unique index idx_menu_unique on menu using btree (pizzeria_id, pizza_name);

explain analyse
select pizzeria_id, pizza_name
from menu;