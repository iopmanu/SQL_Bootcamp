-- Active: 1675786573135@@127.0.0.1@5432@kaif@publicbe
-- session #1
begin;
update pizzeria set rating = 5 where name = 'Pizza Hut';
select * from pizzeria;

-- session #2

select * from pizzeria;

-- session #1

commit;

-- session #2

select * from pizzeria;
