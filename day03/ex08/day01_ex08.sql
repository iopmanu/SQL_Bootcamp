-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with max_id as (select max(id)
                from menu)
insert into menu values((select max(max_id.max) + 1 from max_id), 
                        (select pizzeria.id from pizzeria where pizzeria.name = 'Dominos'),
                        'sicilian pizza', 900);
select * from menu;

delete from menu where id >= 19;
