-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select distinct person.address, round(max(person.age::numeric) - min(person.age::numeric) / max(person.age::numeric), 2) as formula,
                        round(avg(person.age), 2) as average,
                        round(max(person.age::numeric) - min(person.age::numeric) / max(person.age::numeric), 2) > avg(person.age) 
from person
group by person.address
order by person.address