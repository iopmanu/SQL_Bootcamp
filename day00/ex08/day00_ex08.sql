-- Active: 1675701551542@@127.0.0.1@5432@mablever@public
select *
from person_order
where person_order.id % 2 = 0
order by person_order.id;