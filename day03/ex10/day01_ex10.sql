-- Active: 1675786573135@@127.0.0.1@5432@kaif@public

with max_id as (select max(id)
                from menu)
insert into menu values((select max(max_id.max) + 1 from max_id), 
                        (select pizzeria.id from pizzeria where pizzeria.name = 'Dominos'),
                        'sicilian pizza', 900);
with max_id as (select max(id)
                from person_visits)
insert into person_order(id, person_id, menu_id, order_date) 
                            values((select max(max_id.max) + 1 from max_id),
                           (select person.id from person where person.name = 'Denis'),
                            (select menu.id from menu where menu.pizza_name = 'sicilian pizza'),
                            timestamp '2022-02-24'),
                            ((select max(max_id.max) + 2 from max_id),
                           (select person.id from person where person.name = 'Irina'),
                            (select menu.id from menu where menu.pizza_name = 'sicilian pizza'),
                            timestamp '2022-02-24');
select * from person_order;
delete from person_visits where id >= 20;
delete from person_order where id >= 21;
delete from menu where id >= 19;
