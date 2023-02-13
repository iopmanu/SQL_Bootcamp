-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
insert into person_visits
values ((select max(id) from person_visits) + 1,
        (select p.id from person p where p.name = 'Dmitriy'),
        (select q1.id
         from (select *
               from pizzeria pi) q1
                  join (select * from menu m where m.price < 800) q2
                       on q1.id = q2.pizzeria_id
         order by 1
         limit 1),
        timestamp '2022-01-08');
refresh materialized view mv_dmitriy_visits_and_eats;
select * from mv_dmitriy_visits_and_eats