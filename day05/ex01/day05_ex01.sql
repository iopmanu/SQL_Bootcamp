-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
SET ENABLE_SEQSCAN TO off;
explain analyse
(select pizza_name, pizzeria.name
 from menu join pizzeria on menu.pizzeria_id = pizzeria.id)