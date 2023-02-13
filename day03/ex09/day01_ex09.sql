-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with max_id as (select max(id)
                from person_visits)
insert into person_visits(id, person_id, pizzeria_id, visit_date) 
                            values((select max(max_id.max) + 1 from max_id),
                           (select person.id from person where person.name = 'Denis'),
                            (select pizzeria.id from pizzeria where pizzeria.name = 'Dominos'),
                            timestamp '2022-02-24'),
                            ((select max(max_id.max) + 2 from max_id),
                           (select person.id from person where person.name = 'Irina'),
                            (select pizzeria.id from pizzeria where pizzeria.name = 'Dominos'),
                            timestamp '2022-02-24');
                          

select * from person_visits;
delete from person_visits where id >= 20;