-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
-- session #1
begin;
select * from pizzeria where name = 'Pizza Hut';

-- session #2
BEGIN;
select * from pizzeria where name = 'Pizza Hut';

-- session #1
update pizzeria set rating = 4 where name = 'Pizza Hut';

-- session #2
update pizzeria set rating = 3.6 where name = 'Pizza Hut';

-- session #1
COMMIT;

-- session #2
COMMIT;

-- session #1
select * from pizzeria where name = 'Pizza Hut';

-- session #2
select * from pizzeria where name = 'Pizza Hut';

-- both 3.6
