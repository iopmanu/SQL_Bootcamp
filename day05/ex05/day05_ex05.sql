-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create unique index idx_person_order_order_date
     on person_order using btree(person_id, menu_id)
     where order_date = '2022-01-01';

explain analyse
select person_id, menu_id
from person_order
where order_date = '2022-01-01'