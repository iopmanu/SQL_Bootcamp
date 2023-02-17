-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
-- session #1
begin;

-- session #2
begin;

-- session #1
update pizzeria set rating = 1.0 where id = 1;

-- session #2
update pizzeria set rating = 2.28 where id = 2;

-- session #2
update pizzeria set rating = 3.22 where id = 1;

-- session #1
update pizzeria set rating = 5.0 where id = 2;

-- deadlock-----------------------------------------------