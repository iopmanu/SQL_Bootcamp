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
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- session #2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
COMMIT;

-- session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;

-- session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
