-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select order_date as action_date, person_id from person_order
intersect
select visit_date, person_id from person_visits
order by action_date asc, person_id desc;