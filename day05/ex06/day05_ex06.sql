-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create index idx_1 on pizzeria using btree(rating);

explain analyse
select pizza_name,
       max(rating)
       over (PARTITION BY rating ORDER BY rating ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS k
from menu join pizzeria on menu.pizzeria_id = pizzeria.id
order by 1, 2;