-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create or replace function fnc_person_visits_and_eats_on_date(in pperson varchar default 'Dmitriy',
                                                              in pprice numeric default 500, in pdate date default '2022-01-08')
                                                              returns table (
                                                                  pizzeria_name varchar
                                                              ) as
$$
begin
    return query (select distinct pizzeria.name
                  from person_visits join person on person_visits.person_id = person.id
                                     join pizzeria on person_visits.pizzeria_id = pizzeria.id
                                     join menu on menu.pizzeria_id = pizzeria.id
                  where menu.price < pprice and person.name = pperson and person_visits.visit_date = pdate);
end;
$$ language plpgsql;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');

-- CHECK SCRIPT
select person_id, menu.price, pizzeria.name, person_visits.visit_date from person_visits join menu on person_visits.pizzeria_id = menu.pizzeria_id
                                                               join pizzeria on pizzeria.id = menu.pizzeria_id 
                                                               where person_id = 1;