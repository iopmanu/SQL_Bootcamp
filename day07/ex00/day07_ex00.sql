-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select person_id,
       count(person_id) as count_of_visits
from person_visits
group by person_id
order by 2 desc, 1 asc;