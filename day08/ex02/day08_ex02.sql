-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
-- session #1

SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- session #2
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- session #1
BEGIN;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- session #2
BEGIN;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- session #1
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';

-- session #2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';

-- session #1
COMMIT;

-- session #2
COMMIT;

-- session #1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- both are 4