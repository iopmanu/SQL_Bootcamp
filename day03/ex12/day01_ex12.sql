-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
insert into menu values(19, 2, 'greek pizza', 800);

INSERT INTO person_order(id, person_id, menu_id, order_date)
SELECT (GENERATE_SERIES(((SELECT MAX(id) FROM person_order) + 1),
                        ((SELECT MAX(id) FROM person_order) + (SELECT COUNT(*) FROM person)))),
       (GENERATE_SERIES((SELECT MIN(id) FROM person), (SELECT COUNT(*) FROM person))),
       (SELECT m.id FROM menu m WHERE m.pizza_name = 'greek pizza'),
       timestamp '2022-02-25';

select * from person_order;

delete from person_order where id >= 21;

delete from menu where id >= 19;
