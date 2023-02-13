-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select coalesce(person.name, '-') as person_name,
       dates.visit_date as person_visit,
       coalesce(pizzeria.name, '-') as pizzeria_name
from person
    full join (select *
          from person_visits
          where person_visits.visit_date between '2022-01-01' and '2022-01-03') as dates
    on dates.person_id = person.id
    full join pizzeria on dates.pizzeria_id = pizzeria.id
order by person_name, person_visit, pizzeria_name