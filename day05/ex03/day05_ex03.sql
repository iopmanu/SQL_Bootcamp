-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create index idx_person_order_multi on person_order using btree(person_id, menu_id, order_date);

explain analyse
select person_id, menu_id, order_date
from person_order
where person_id = 8 and menu_id = 19
