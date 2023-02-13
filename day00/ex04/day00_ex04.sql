-- Active: 1675701551542@@127.0.0.1@5432@mablever@public
select format('%s (age:%s,gender:''%s'', address:''%s'')', name, age, gender, address) as person_information
from person
order by 1;