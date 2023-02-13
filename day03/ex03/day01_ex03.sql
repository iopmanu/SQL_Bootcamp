-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with people_info as (select person.gender, pizzeria.name
                     from person_visits join person on person_visits.person_id = person.id
                                        join pizzeria on person_visits.pizzeria_id = pizzeria.id),
     women       as (select *
                     from people_info
                     where people_info.gender = 'female'),
     male        as (select *
                     from people_info
                     where people_info.gender = 'male'),
     only_male   as (select distinct male.name
                     from male),
     only_women  as (select distinct women.name
                     from women)
select *
from only_male
except
select *
from only_women