-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
SELECT po.order_date AS order_date,
       format('%s (age:%s)', person.name, person.age) as person_information
FROM (person_order AS po(primary_id, id, menu_id, order_date)
    NATURAL JOIN person)
ORDER BY order_date ASC, person_information ASC;