-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select pizza_name from menu
intersect
select pizza_name from menu
order by pizza_name desc;