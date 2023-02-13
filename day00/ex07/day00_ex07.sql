-- Active: 1675701551542@@127.0.0.1@5432@mablever@public
select person.id, person.name,
case
    when(person.age between 10 and 20) then 'interval #1'
    when(person.age > 20 and person.age < 24) then 'interval #2'
    else 'interval #3'
end as intervals
from person
order by intervals;