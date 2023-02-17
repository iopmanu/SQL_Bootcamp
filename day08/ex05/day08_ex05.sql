-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
-- session #1
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- session #2
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- session #1
BEGIN;

-- session #2
BEGIN;

-- session #1
SELECT SUM(rating) FROM pizzeria;

-- session #2
UPDATE pizzeria SET rating = 1 WHERE name = 'Pizza Hut';
COMMIT;

-- session #1
SELECT SUM(rating) FROM pizzeria;
COMMIT;

-- session #1
SELECT SUM(rating) FROM pizzeria;

-- session #2
SELECT SUM(rating) FROM pizzeria;