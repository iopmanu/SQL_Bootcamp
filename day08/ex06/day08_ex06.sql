-- session #1
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- session #1
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- session #1
BEGIN;

-- session #2
BEGIN;

-- session #1
SELECT SUM(rating) FROM pizzeria;

-- session #2
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
COMMIT;

-- session #1
SELECT SUM(rating) FROM pizzeria;
COMMIT;

-- session #1
SELECT SUM(rating) FROM pizzeria;

-- session #2
SELECT SUM(rating) FROM pizzeria;
