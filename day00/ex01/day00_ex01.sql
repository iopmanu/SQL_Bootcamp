-- Active: 1675701551542@@127.0.0.1@5432@mablever@public
select name, age
from person
where gender = 'female'
order by name;